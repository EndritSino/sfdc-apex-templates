/*
 *  @Author: Endrit Sino
 *  @Date: 21/09/2018
 *
 *  @Desc: The purpose of this example is to provide a starting template for a schedulable class implementation.
 */
public with sharing class SchedulerClassExample implements Schedulable {

    public SchedulerClassExample() {}

    public void execute(SchedulableContext sc) {

        // *Here can follow up the business logic or the procedures that we want
        // to take place at a particular time.

        // ...my custom business logic

        // *Alternatively, it can be coupled with a batch class that fires a batch execution. This is
        // one of the most common uses of the Schedulable classes.
        Integer scopeSize = 200;
        Id batchId = Database.executeBatch(new JobCustomerNotificationBatch(), scopeSize);

    }

}