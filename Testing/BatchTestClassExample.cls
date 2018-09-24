/*
 *  @Author: Endrit Sino
 *  @Date: 21/09/2018
 *
 *  @Desc: The purpose of this example is to provide a starting template for a test class implementation,
 *  for a Batch Apex Class.
 *
 */
@IsTest(seeAllData=false)
private class BatchTestClassExample {

    @TestSetup
    static void createTestData() {

        // Create the necessary test data or even assert that particular configuration data(like Custom Settings or Custom Metadata),
        // crucial for the proper assertion of the test classes, are not missing. 

    }

    @IsTest
    static void testBatch(){

        // IF
        // Prepare or query the necessary test data for the specific
        // business logic or behavior that you're trying to test.

        Test.startTest();

        // WHEN
        MyCustomBatchClass batchClass = new MyCustomBatchClass();
        Id batchId = Database.executeBatch(batchClass);

        Test.stopTest();

        // THEN
        // Assert the results of the test so that you are sure that the expected behaviour or results
        // from the platform are achieved.

    }
}