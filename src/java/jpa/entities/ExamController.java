package jpa.entities;

import jpa.entities.util.JsfUtil;
import jpa.entities.util.PaginationHelper;
import jpa.session.ExamFacade;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.model.SelectItem;

@Named("examController")
@SessionScoped
public class ExamController implements Serializable {

    private Exam current;
    private Exam selectedItem;
    private DataModel items = null;
    @EJB
    private jpa.session.ExamFacade ejbFacade;
    private PaginationHelper pagination;
    private int selectedItemIndex;
    private List<Exam> exams;

    private List<ExamQuestion> examQuestionsList;

    int currentQuestionIndex;
    private ExamQuestion currentQuestion;
    private int percentageComplete;

    private boolean lastQuestion;

    public ExamController() {
        exams = new ArrayList();
        currentQuestionIndex = 0;
        lastQuestion = false;
    }

    public Exam getSelected() {
        if (current == null) {
            current = new Exam();
            selectedItemIndex = -1;
        }
        return current;
    }

    public void handleTimer() {
        int curr = current.getDuration().getSeconds();
        current.getDuration().setSeconds(--curr);
    }

    public void nextQuestion() {

        if (currentQuestionIndex >= current.getExamQuestionCollection().size() - 1) {
            lastQuestion = true;
            setPercentageComplete(100);
           return;
        }
        if (percentageComplete != 100) {
            setPercentageComplete(getPercentageComplete() + (int) (((double) 1 / getExamQuestionsList().size()) * 100));
        }
        currentQuestionIndex++;
        
        getCurrentQuestion();
    }

    public void previousQuestion() {

        if (currentQuestionIndex == 0) {
            return;
        }
        lastQuestion = false;
        currentQuestionIndex--;
        getCurrentQuestion();

    }

    /**
     * @return the exams
     */
    public List<Exam> getExams() {
        return ejbFacade.findAllExams();
    }

    /**
     * @param exams the exams to set
     */
    public void setExams(List<Exam> exams) {
        this.exams = exams;
        this.exams = ejbFacade.findAllExams();

    }

    private ExamFacade getFacade() {
        return ejbFacade;
    }

    public PaginationHelper getPagination() {
        if (pagination == null) {
            pagination = new PaginationHelper(10) {

                @Override
                public int getItemsCount() {
                    return getFacade().count();
                }

                @Override
                public DataModel createPageDataModel() {
                    return new ListDataModel(getFacade().findRange(new int[]{getPageFirstItem(), getPageFirstItem() + getPageSize()}));
                }
            };
        }
        return pagination;
    }

    public String prepareList() {
        recreateModel();
        return "List";
    }

    public String prepareView() {
        current = (Exam) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        return "View";
    }

    public String prepareCreate() {
        current = new Exam();
        selectedItemIndex = -1;
        return "Create";
    }

    public String create() {
        try {
            getFacade().create(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("resources/Bundle").getString("ExamCreated"));
            return prepareCreate();
        } catch (Exception e) {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("resources/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String prepareEdit() {
        current = (Exam) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        return "Edit";
    }

    public String update() {
        try {
            getFacade().edit(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("resources/Bundle").getString("ExamUpdated"));
            return "View";
        } catch (Exception e) {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("resources/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String destroy() {
        current = (Exam) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        performDestroy();
        recreatePagination();
        recreateModel();
        return "List";
    }

    public String destroyAndView() {
        performDestroy();
        recreateModel();
        updateCurrentItem();
        if (selectedItemIndex >= 0) {
            return "View";
        } else {
            // all items were removed - go back to list
            recreateModel();
            return "List";
        }
    }

    private void performDestroy() {
        try {
            getFacade().remove(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("resources/Bundle").getString("ExamDeleted"));
        } catch (Exception e) {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("resources/Bundle").getString("PersistenceErrorOccured"));
        }
    }

    private void updateCurrentItem() {
        int count = getFacade().count();
        if (selectedItemIndex >= count) {
            // selected index cannot be bigger than number of items:
            selectedItemIndex = count - 1;
            // go to previous page if last page disappeared:
            if (pagination.getPageFirstItem() >= count) {
                pagination.previousPage();
            }
        }
        if (selectedItemIndex >= 0) {
            current = getFacade().findRange(new int[]{selectedItemIndex, selectedItemIndex + 1}).get(0);
        }
    }

    public DataModel getItems() {
        if (items == null) {
            items = getPagination().createPageDataModel();
        }
        return items;
    }

    private void recreateModel() {
        items = null;
    }

    private void recreatePagination() {
        pagination = null;
    }

    public String next() {
        getPagination().nextPage();
        recreateModel();
        return "List";
    }

    public String previous() {
        getPagination().previousPage();
        recreateModel();
        return "List";
    }

    public SelectItem[] getItemsAvailableSelectMany() {
        return JsfUtil.getSelectItems(ejbFacade.findAll(), false);
    }

    public SelectItem[] getItemsAvailableSelectOne() {
        return JsfUtil.getSelectItems(ejbFacade.findAll(), true);
    }

    public Exam getExam(java.lang.Integer id) {
        return ejbFacade.find(id);
    }

    /**
     * @return the selectedItem
     */
    public Exam getSelectedItem() {
        return selectedItem;
    }

    /**
     * @param selectedItem the selectedItem to set
     */
    public void setSelectedItem(Exam selectedItem) {
        this.selectedItem = selectedItem;
        current = selectedItem;
        examQuestionsList = new ArrayList();
        getExamQuestionsList().addAll(current.getExamQuestionCollection());

    }

    /**
     * @return the examQuestionsList
     * @return the currentQuestion
     */
    public ExamQuestion getCurrentQuestion() {
        return (ExamQuestion) getSelectedItem().getExamQuestionCollection().toArray()[currentQuestionIndex];
    }

    /**
     * @return the examQuestionsList
     */
    public List<ExamQuestion> getExamQuestionsList() {
        return examQuestionsList;
    }

    /**
     * @param examQuestionsList the examQuestionsList to set
     */
    public void setExamQuestionsList(List<ExamQuestion> examQuestionsList) {
        this.examQuestionsList = examQuestionsList;
    }

    /**
     * @return the percentageComplete
     */
    public int getPercentageComplete() {
        return percentageComplete;
    }

    /**
     * @param percentageComplete the percentageComplete to set
     */
    public void setPercentageComplete(int percentageComplete) {
        this.percentageComplete = percentageComplete;
    }

    /**
     * @return the lastQuestion
     */
    public boolean isLastQuestion() {
        return lastQuestion;
    }

    /**
     * @param lastQuestion the lastQuestion to set
     */
    public void setLastQuestion(boolean lastQuestion) {
        this.lastQuestion = lastQuestion;
    }

    @FacesConverter(forClass = Exam.class)
    public static class ExamControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            ExamController controller = (ExamController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "examController");
            return controller.getExam(getKey(value));
        }

        java.lang.Integer getKey(String value) {
            java.lang.Integer key;
            key = Integer.valueOf(value);
            return key;
        }

        String getStringKey(java.lang.Integer value) {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            return sb.toString();
        }

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Exam) {
                Exam o = (Exam) object;
                return getStringKey(o.getExamId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + Exam.class.getName());
            }
        }

    }

}
