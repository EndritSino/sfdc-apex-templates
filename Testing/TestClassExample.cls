/*
 *  @Author: Endrit Sino
 *  @Date: 21/09/2018
 *
 *  @Desc: The purpose of this example is to provide a starting template for test class implementation, and
 *  also some explanation on a better structuring of the test class itself.
 *
 *  Note: Is suggested to always develop a unit test per each apex method.
 */
@IsTest(seeAllData=false)
private class TestClassExample {

    @TestSetup
    static void createTestData() {

        // Create the necessary test data or even assert that particular configuration data(like Custom Settings or Custom Metadata),
        // crucial for the proper assertion of the test classes, are not missing. 

    }

    @IsTest
    static void methodNameTest_1(){

        // IF
        // Prepare or query the necessary test data for the specific
        // business logic or behavior that you're trying to test.

        Test.startTest();

        // WHEN
        // Perform the necessary action or trigger event that you're trying to test

        Test.stopTest();

        // THEN
        // Assert the results of the test so that you are sure that the expected behaviour or results
        // from the platform are achieved.

    }

    @IsTest
    static void methodNameTest_2(){

        // IF

        Test.startTest();

        // WHEN

        Test.stopTest();

        // THEN

    }
}