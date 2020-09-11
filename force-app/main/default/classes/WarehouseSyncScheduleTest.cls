@isTest
public class WarehouseSyncScheduleTest {
    
    @isTest
    static void testWarehouse(){
        String sch = '0 0 0 * * ? 2020';
        Test.startTest();
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new WarehouseCalloutServiceMock());
        String jobId = System.schedule('ScheduledWarehouseTest', sch, new WarehouseSyncSchedule());
        Test.stopTest();
    }
}