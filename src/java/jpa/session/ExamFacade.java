/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.session;

import java.util.List;
import java.util.TimeZone;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import jpa.entities.Exam;

/**
 *
 * @author Thom Palmer (palm0116@algonquinlive.com)
 */
@Stateless
public class ExamFacade extends AbstractFacade<Exam> {

    @PersistenceContext(unitName = "ExamToolPlayerPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ExamFacade() {
        super(Exam.class);
    }

    public List<Exam> findAllExams() {
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
        List<Exam> exams;
        try {
            exams = em.createNamedQuery("Exam.findAllExams").getResultList();
        } catch (Exception e) {
            exams = null;
        }
        return exams;
    }
}
