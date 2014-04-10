/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf;

import java.io.Serializable;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import jpa.entities.Users;

/**
 *
 * @author chris
 */
@ManagedBean(name = "loginController")
@SessionScoped
public class LoginController implements Serializable {

    @EJB
    private jpa.session.UsersFacade ejbFacade;
    private Boolean isAuthenticated;
    private String password;
    private String username;

    public String doAuthenticate() {
        FacesMessage message;

        FacesContext context = FacesContext.getCurrentInstance();

// assume authentication will fail
        isAuthenticated = false;

// retrieve the account from the db
        Users loginAccount = ejbFacade.findUserByNameAndPassword(username, password);

        if (loginAccount == null) {
            message = new FacesMessage("Invalid username or password");
            context.addMessage("content:username", message);
            return "login";
        }
        isAuthenticated = true;
        return "examSelection?faces-redirect=true";
    }

    public String doLogin() {
        return this.doLogout();
    }

    public String doLogout() {
        this.setUsername("");
        this.setPassword("");
        isAuthenticated = false;

        return "login?faces-redirect=true";
    }

    /**
     * @return the ejbFacade
     */
    public jpa.session.UsersFacade getEjbFacade() {
        return ejbFacade;
    }

    /**
     * @param ejbFacade the ejbFacade to set
     */
    public void setEjbFacade(jpa.session.UsersFacade ejbFacade) {
        this.ejbFacade = ejbFacade;
    }

    /**
     * @return the isAuthenticated
     */
    public Boolean getIsAuthenticated() {
        return isAuthenticated;
    }

    /**
     * @param isAuthenticated the isAuthenticated to set
     */
    public void setIsAuthenticated(Boolean isAuthenticated) {
        this.isAuthenticated = isAuthenticated;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }
}
