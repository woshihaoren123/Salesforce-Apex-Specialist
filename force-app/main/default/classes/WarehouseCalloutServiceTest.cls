@IsTest
private class WarehouseCalloutServiceTest {
    
    testmethod static void testWarehouse() {
        Test.setMock(HttpCalloutMock.class, new WarehouseCalloutServiceMock()); 
        Test.startTest();
        WarehouseCalloutService.runWarehouseEquipmentSync();
        Test.stopTest();
    }
}