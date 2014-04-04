/**
 *
 * @author Thom Palmer (palm0116@algonquinlive.com)
 */
package jsf;

import java.io.Serializable;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import jpa.entities.Users;


@ManagedBean(name = "loginController")
@SessionScoped   

public class ExamSelectionController {
    
    @EJB
    private jpa.session.ExamFacade ejbFacade;

  
    
}
