@isTest
global class WarehouseCalloutServiceMock implements HttpCalloutMock {
    
    global HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('[{"_id":"11111111111111111","replacement":false,"quantity":5,"name":"test","maintenanceperiod":365,"lifespan":1200,"cost":50000,"sku":"100000"}]');
        response.setStatusCode(200);
        return response; 
    }
}