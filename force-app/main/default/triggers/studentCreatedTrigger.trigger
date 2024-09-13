trigger studentCreatedTrigger on Student__c (before insert) {
    new StudentCreatedTriggerHandler().fillStudentComment(Trigger.new);
}