public with sharing class StudentCreatedTriggerHandler {
    public void fillStudentComment(List<Student__c> students){
        for (Student__c st : students) {
            st.Comment__c = 'Done';
        }
    }
}