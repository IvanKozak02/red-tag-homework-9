@isTest
private class StudentCreatedTriggerTest {

    @isTest
    static void testCreateStudent() {
        List<Student__c> stToInsert = new List<Student__c>();
        for (Integer i = 0; i < 100; i++) {
            stToInsert.add(new Student__c(Name = 'Test Student ' + i));
        }

        Test.startTest();
        insert stToInsert;
        Test.stopTest();

        List<Student__c> insertedStudentsWithComment = [SELECT Id FROM Student__c WHERE Comment__c = 'Done'];

        System.assertEquals(100, insertedStudentsWithComment.size(), 'There must be 100 Student records with Comment = "Done"');

    }
}