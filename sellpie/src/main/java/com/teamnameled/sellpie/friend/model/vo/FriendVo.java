package com.teamnameled.sellpie.friend.model.vo;

public class FriendVo {
   
   public FriendVo() {
      
   }
   
   private int ano;
   private String applicantEmail;
   private String subjectEmail;
   private char isapply;
   
   public int getAno() {
      return ano;
   }


   public void setAno(int ano) {
      this.ano = ano;
   }


   public String getApplicantEmail() {
      return applicantEmail;
   }


   public void setApplicantEmail(String applicantEmail) {
      this.applicantEmail = applicantEmail;
   }


   public String getSubjectEmail() {
      return subjectEmail;
   }


   public void setSubjectEmail(String subjectEmail) {
      this.subjectEmail = subjectEmail;
   }


   public char getIsapply() {
      return isapply;
   }


   public void setIsapply(char isapply) {
      this.isapply = isapply;
   }

   @Override
   public String toString() {
      return "FriendVo [ano=" + ano + ", applicantEmail=" + applicantEmail + ", subjectEmail=" + subjectEmail
            + ", isapply=" + isapply + "]";
   }
}