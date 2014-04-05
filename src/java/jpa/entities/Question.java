/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package jpa.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author chris
 */
@Entity
@Table(name = "QUESTION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Question.findAll", query = "SELECT q FROM Question q"),
    @NamedQuery(name = "Question.findByQuestionId", query = "SELECT q FROM Question q WHERE q.questionId = :questionId"),
    @NamedQuery(name = "Question.findByQuestion", query = "SELECT q FROM Question q WHERE q.question = :question")})
public class Question implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "QUESTION_ID")
    private Integer questionId;
    @Size(max = 255)
    @Column(name = "QUESTION")
    private String question;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "questionId")
    private Collection<ExamQuestion> examQuestionCollection;
    @JoinColumn(name = "TYPE_ID", referencedColumnName = "TYPE_ID")
    @ManyToOne(optional = false)
    private QuestionType typeId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "questionId")
    private Collection<QuestionOption> questionOptionCollection;

    public Question() {
    }

    public Question(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    @XmlTransient
    public Collection<ExamQuestion> getExamQuestionCollection() {
        return examQuestionCollection;
    }

    public void setExamQuestionCollection(Collection<ExamQuestion> examQuestionCollection) {
        this.examQuestionCollection = examQuestionCollection;
    }

    public QuestionType getTypeId() {
        return typeId;
    }

    public void setTypeId(QuestionType typeId) {
        this.typeId = typeId;
    }

    @XmlTransient
    public Collection<QuestionOption> getQuestionOptionCollection() {
        return questionOptionCollection;
    }

    public void setQuestionOptionCollection(Collection<QuestionOption> questionOptionCollection) {
        this.questionOptionCollection = questionOptionCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (questionId != null ? questionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Question)) {
            return false;
        }
        Question other = (Question) object;
        if ((this.questionId == null && other.questionId != null) || (this.questionId != null && !this.questionId.equals(other.questionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jpa.entities.Question[ questionId=" + questionId + " ]";
    }
    
}
