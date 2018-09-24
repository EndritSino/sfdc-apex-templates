/*
 *  @Author: Endrit Sino
 *  @Date: 20/09/2018
 *
 *  @Desc: The purpose of this example is to provide a starting template for any batch requirement that one might have.
 *
 *  Note that the getQueryLocator(), gets the query string indirectly from the SOQL query example here, by leveraging the
 * getQuery() method of the 
 *
 *  Related articles: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_methods_system_database_batch.htm
 */
public class BatchClassExample implements Database.Batchable<sObject>, Database.AllowsCallouts {

    public BatchClassExample() {
        this.query = 'SELECT';
        this.query += ' Id,';
        this.query += ' Name,';
        this.query += ' CustomField__1,';
        this.query += ' CustomField__2,';
        // ...add other fields that you might need in your business logic
        this.query += ' FROM SObject';
        this.query += ' WHERE ...setup your condition';
        // ...and some other condition
    }

    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(this.query);
    }

    public void execute(Database.BatchableContext bc, List<sObject> scope) {

        // *If you have a nother class that's taking care of the Business Logic, you can pass the scope list to that one
        BatchManager.execute((List<SObject>) scope);

        // *Alternatively, you can process the records in this method right away
        for (SObject record: (List<SObject>) scope) {

            // Process the SObject records

        }
    }

    public void finish(Database.BatchableContext bc) {}
}