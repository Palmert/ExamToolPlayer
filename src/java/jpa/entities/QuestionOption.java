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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author chris
 */
@Entity
@Table(name = "QUESTION_OPTION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QuestionOption.findAll", query = "SELECT q FROM QuestionOption q"),
    @NamedQuery(name = "QuestionOption.findByOptionId", query = "SELECT q FROM QuestionOption q WHERE q.optionId = :optionId"),
    @NamedQuery(name = "QuestionOption.findByOptionText", query = "SELECT q FROM QuestionOption q WHERE q.optionText = :optionText"),
    @NamedQuery(name = "QuestionOption.findByOptionIsanswer", query = "SELECT q FROM QuestionOption q WHERE q.optionIsanswer = :optionIsanswer")})
public class QuestionOption implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "OPTION_ID")
    private Integer optionId;
    @Size(max = 255)
    @Column(name = "OPTION_TEXT")
    private String optionText;
    @Basic(optional = false)
    @NotNull
    @Column(name = "OPTION_ISANSWER")
    private Serializable optionIsanswer;
    @JoinColumn(name = "QUESTION_ID", referencedColumnName = "QUESTION_ID")
    @ManyToOne(optional = false)
    private Question questionId;

    public QuestionOption() {
    }

    public QuestionOption(Integer optionId) {
        this.optionId = optionId;
    }

    public QuestionOption(Integer optionId, Serializable optionIsanswer) {
        this.optionId = optionId;
        this.optionIsanswer = optionIsanswer;
    }

    public Integer getOptionId() {
        return optionId;
    }

    public void setOptionId(Integer optionId) {
        this.optionId = optionId;
    }

    public String getOptionText() {
        return optionText;
    }

    public void setOptionText(String optionText) {
        this.optionText = optionText;
    }

    public Serializable getOptionIsanswer() {
        return optionIsanswer;
    }

    public void setOptionIsanswer(Serializable optionIsanswer) {
        this.optionIsanswer = optionIsanswer;
    }

    public Question getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Question questionId) {
        this.questionId = questionId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (optionId != null ? optionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QuestionOption)) {
            return false;
        }
        QuestionOption other = (QuestionOption) object;
        if ((this.optionId == null && other.optionId != null) || (this.optionId != null && !this.optionId.equals(other.optionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jpa.entities.QuestionOption[ optionId=" + optionId + " ]";
    }
    
}
