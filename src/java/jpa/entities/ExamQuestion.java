/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package jpa.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author chris
 */
@Entity
@Table(name = "EXAM_QUESTION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ExamQuestion.findAll", query = "SELECT e FROM ExamQuestion e"),
    @NamedQuery(name = "ExamQuestion.findByExamQuestionId", query = "SELECT e FROM ExamQuestion e WHERE e.examQuestionId = :examQuestionId")})
public class ExamQuestion implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "EXAM_QUESTION_ID")
    private Integer examQuestionId;
    @JoinColumn(name = "QUESTION_ID", referencedColumnName = "QUESTION_ID")
    @ManyToOne(optional = false)
    private Question questionId;
    @JoinColumn(name = "EXAM_ID", referencedColumnName = "EXAM_ID")
    @ManyToOne(optional = false)
    private Exam examId;

    public ExamQuestion() {
    }

    public ExamQuestion(Integer examQuestionId) {
        this.examQuestionId = examQuestionId;
    }

    public Integer getExamQuestionId() {
        return examQuestionId;
    }

    public void setExamQuestionId(Integer examQuestionId) {
        this.examQuestionId = examQuestionId;
    }

    public Question getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Question questionId) {
        this.questionId = questionId;
    }

    public Exam getExamId() {
        return examId;
    }

    public void setExamId(Exam examId) {
        this.examId = examId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (examQuestionId != null ? examQuestionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ExamQuestion)) {
            return false;
        }
        ExamQuestion other = (ExamQuestion) object;
        if ((this.examQuestionId == null && other.examQuestionId != null) || (this.examQuestionId != null && !this.examQuestionId.equals(other.examQuestionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jpa.entities.ExamQuestion[ examQuestionId=" + examQuestionId + " ]";
    }
    
}
