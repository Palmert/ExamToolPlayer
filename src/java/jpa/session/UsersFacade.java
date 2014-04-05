/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.session;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import jpa.entities.Users;

/**
 *
 * @author chris
 */
@Stateless
public class UsersFacade extends AbstractFacade<Users> {

    @PersistenceContext(unitName = "ExamToolPlayerPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(Users.class);
    }

    public Users findUserByNameAndPassword(String username, String password) {
        Users user;
        try {
            user = (Users) em.createNamedQuery("Users.findByUserNameAndPassword").setParameter("userName", username).setParameter("password", password).getSingleResult();
        } catch (Exception e) {
            user = null;
        }

        return user;
    }

}
