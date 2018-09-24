/*
 *  @Author: Endrit Sino
 *  @Date: 21/09/2018
 *
 *  @Desc: The purpose of this example is to provide a starting template for a test class implementation,
 *  for a Schedulable Apex Class.
 *
 */
@IsTest(seeAllData=false)
private class SchedulableTestClassExample {

    @TestSetup
    static void createTestData() {

        // Create the necessary test data or even assert that particular configuration data(like Custom Settings or Custom Metadata),
        // crucial for the proper assertion of the test classes, are not missing. 

    }

    @IsTest
    static void testSchedulable(){

        // IF
        // Prepare or query the necessary test data for the specific
        // business logic or behavior that you're trying to test.

        Test.startTest();

        // WHEN
        MySchedulableClass schedulableJob = new MySchedulableClass();
        String chronExpression = '0 0 23 * * ?';
        String jobId = System.schedule('MySchedulableClass Job - Test', chronExpression, schedulableJob);

        // Call this method to be able test also the functionality of wrappe by the execute() method of the Schedulable class
        schedulableJob.execute(null);

        Test.stopTest();

        // THEN
        // Assert the results of the test so that you are sure that the expected behaviour or results
        // from the platform are achieved.

    }
}