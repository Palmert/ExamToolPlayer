/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package jpa.session;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import jpa.entities.QuestionType;

/**
 *
 * @author Thom Palmer (palm0116@algonquinlive.com)
 */
@Stateless
public class QuestionTypeFacade extends AbstractFacade<QuestionType> {
    @PersistenceContext(unitName = "ExamToolPlayerPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public QuestionTypeFacade() {
        super(QuestionType.class);
    }
    
}
