package jpa.entities;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import jpa.entities.util.JsfUtil;
import jpa.entities.util.PaginationHelper;
import jpa.session.ExamFacade;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
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
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import org.primefaces.context.RequestContext;

@Named("examController")
@SessionScoped
public class ExamController implements Serializable {

    private Exam current;
    private Exam selectedItem;
    private String nextValue = "Next";
    private DataModel items = null;
    private int questionNumber = 0;
    private String examResults = null;
    @EJB
    private jpa.session.ExamFacade ejbFacade;
    private jpa.session.QuestionOptionFacade optionFacade;
    private PaginationHelper pagination;
    private int selectedItemIndex;
    private List<Exam> exams;
    private List examResultsInfo;
    private Date duration;

    private List<ExamQuestion> examQuestionsList;

    int currentQuestionIndex;
    private ExamQuestion currentQuestion;
    private int percentageComplete;

    private boolean lastQuestion;
    private boolean timeExpired;

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

    public int getAmountCorrect() {
        int totalCorrect = 0;
        for (ExamQuestion questions : current.getExamQuestionCollection()) {
            for (QuestionOption option : questions.getQuestionId().getQuestionOptionCollection()) {
                if (questions.getSelectedOptionId() == null) {

                } else if (questions.getSelectedOptionId().getOptionId() == option.getOptionId() && option.getOptionIsanswer() == 1) {
                    totalCorrect++;
                }

            }
        }
        return totalCorrect;
    }

    public void generateExamResultsCSV() {
        Map<String, String> params;
        FacesContext fc = FacesContext.getCurrentInstance();
        params = fc.getExternalContext().getRequestParameterMap();
        String user = params.get("user");
        int totalCorrect = 0;
        examResults = selectedItem.getTitle() + ",";
        examResults = examResults.concat(user + ",");

        for (ExamQuestion questions : current.getExamQuestionCollection()) {
            for (QuestionOption option : questions.getQuestionId().getQuestionOptionCollection()) {
                if (questions.getSelectedOptionId() == null) {
                    examResults = examResults.concat(0 + ",");
                    break;
                } else if (questions.getSelectedOptionId().getOptionId() == option.getOptionId() && option.getOptionIsanswer() == 1) {
                    examResults = examResults.concat(1 + ",");
                    totalCorrect++;
                    break;

                } else if (questions.getSelectedOptionId().getOptionId() != option.getOptionId() && option.getOptionIsanswer() == 1) {
                    examResults = examResults.concat(0 + ",");
                }

            }
        }
        examResults = examResults.concat(totalCorrect + ",");
        double gradePercentage = (getAmountCorrect() / (double)selectedItem.getExamQuestionCollection().size()) *100;
        examResults = examResults.concat((int)gradePercentage + ",");
        examResults = examResults.concat(calculateGradeLetter((int) gradePercentage));
        createAndServeFile(selectedItem.getTitle().concat(",").concat(user));
    }

    public void createAndServeFile(String fileName) {

        File file = new File(fileName);
        HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();
        PrintWriter writer;
        try {
            writer = new PrintWriter(fileName, "UTF-8");
            writer.println(examResults);
            writer.close();
        } catch (FileNotFoundException | UnsupportedEncodingException ex) {
            Logger.getLogger(ExamController.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
        response.setContentLength((int) file.length());
        ServletOutputStream out = null;
        try {
            FileInputStream input = new FileInputStream(file);
            byte[] buffer = new byte[1024];
            out = response.getOutputStream();
            int i = 0;
            while ((i = input.read(buffer)) != -1) {
                out.write(buffer);
                out.flush();
            }
            FacesContext.getCurrentInstance().getResponseComplete();
        } catch (IOException err) {
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
            } catch (IOException err) {
            }
        }

    }

    public int countQuestions() {
        return ++questionNumber;
    }

    public String calculateGradeLetter(int gradePercentage) {
        if (gradePercentage >= 90) {
            return "A+";
        }
        if (gradePercentage < 90 && gradePercentage >= 85) {
            return "A";
        }
        if (gradePercentage < 85 && gradePercentage >= 80) {
            return "A-";
        }
        if (gradePercentage < 80 && gradePercentage >= 77) {
            return "B+";
        }
        if (gradePercentage < 77 && gradePercentage >= 73) {
            return "B";
        }
        if (gradePercentage < 73 && gradePercentage >= 70) {
            return "B-";
        }
        if (gradePercentage < 70 && gradePercentage >= 67) {
            return "C+";
        }
        if (gradePercentage < 67 && gradePercentage >= 63) {
            return "C";
        }
        if (gradePercentage < 63 && gradePercentage >= 60) {
            return "C-";
        }
        if (gradePercentage < 60 && gradePercentage >= 57) {
            return "D+";
        }
        if (gradePercentage < 57 && gradePercentage >= 53) {
            return "D";
        }
        if (gradePercentage < 53 && gradePercentage >= 50) {
            return "D-";
        }

        return "F";
    }

    public void handleTimer() {
        if (duration == null) {
            duration = current.getDuration();
        }
        int curr = duration.getSeconds();

        if (duration.getHours() == 0 && duration.getMinutes() == 0 && duration.getSeconds() == 0) {
            RequestContext context = RequestContext.getCurrentInstance();
            context.execute("expired.show();");
            timeExpired = true;
            return;
        }
        duration.setSeconds(--curr);

    }

    public void updateProgress() {
        if (percentageComplete != 100 && currentQuestion.getSelectedOptionId() == null) {
            setPercentageComplete(getPercentageComplete() + (int) (((double) 1 / getExamQuestionsList().size()) * 100));
        }

    }

    public void nextQuestion() {
        if (currentQuestionIndex < current.getExamQuestionCollection().size() - 1) {
            currentQuestionIndex++;
        }
        if (currentQuestionIndex >= current.getExamQuestionCollection().size() - 1) {
            lastQuestion = true;
            setNextValue("Grade Exam");
            return;
        }

        getCurrentQuestion();

    }

    public void previousQuestion() {

        if (currentQuestionIndex == 0) {
            return;
        }
        currentQuestionIndex--;
        lastQuestion = false;
        setNextValue("Next");

        getCurrentQuestion();

    }

    public void init() {
        for (Exam e : exams) {
            e = e;
        }
        setExams();
    }

    /**
     * @return the exams
     */
    public List<Exam> getExams() {
        return ejbFacade.findAllExams();
    }

    /**
     */
    public void setExams() {
        this.exams = null;
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
     */
    public ExamQuestion getCurrentQuestion() {
        currentQuestion = (ExamQuestion) getSelectedItem().getExamQuestionCollection().toArray()[currentQuestionIndex];
        return currentQuestion;
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

    public String getCorrectOption(Question question) {

        for (QuestionOption qOption : question.getQuestionOptionCollection()) {
            if (qOption.getOptionIsanswer() == 1) {
                return qOption.getOptionText();
            }
        }

        return null;
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

    /**
     * @return the nextValue
     */
    public String getNextValue() {
        return nextValue;
    }

    /**
     * @param nextValue the nextValue to set
     */
    public void setNextValue(String nextValue) {
        this.nextValue = nextValue;
    }

    /**
     * @return the timeExpired
     */
    public boolean isTimeExpired() {
        return timeExpired;
    }

    /**
     * @param timeExpired the timeExpired to set
     */
    public void setTimeExpired(boolean timeExpired) {
        this.timeExpired = timeExpired;
    }

    /**
     * @return the examResultsInfo
     */
    public List getExamResultsInfo() {
        return examResultsInfo;
    }

    /**
     * @param examResultsInfo the examResultsInfo to set
     */
    public void setExamResultsInfo(List examResultsInfo) {
        this.examResultsInfo = examResultsInfo;
    }

    /**
     * @return the questionNumber
     */
    public int getQuestionNumber() {
        return questionNumber;
    }

    /**
     * @param questionNumber the questionNumber to set
     */
    public void setQuestionNumber(int questionNumber) {
        this.questionNumber = questionNumber;
    }

    /**
     * @return the duration
     */
    public Date getDuration() {
        return duration;
    }

    /**
     * @param duration the duration to set
     */
    public void setDuration(Date duration) {
        this.duration = duration;
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
