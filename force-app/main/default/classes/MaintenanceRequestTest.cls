@isTest
public class MaintenanceRequestTest {
    
    @isTest
    static void testRequest() {
        Account acct = new Account(Name= 'testAcct1');
        insert acct;
        Contact cont = new Contact(LastName = 'contactTest1', AccountID = acct.id, email = 'testcont@test1.com');
        insert cont;
        Product2 prd1 = new Product2(Name = 'ProductTest1', Maintenance_Cycle__c = 2, Replacement_Part__c = true);
        insert prd1;
        Vehicle__c vhcl1 = new Vehicle__c(Name = 'VehicleTest1');
        insert vhcl1;
        
        Case MntRequest = new Case(description = 'test123',
                                   Subject = 'Other',
                                   Type = 'Repair',
                                   Status = 'Closed',
                                   origin = 'Web',
                                   Date_Reported__c = date.today(),
                                   Date_Due__c = date.today(),
                                   Vehicle__c = vhcl1.id,
                                   Equipment__c = prd1.id);
        
        insert MntRequest;
        Work_Part__c wp = new Work_Part__c(Equipment__c = prd1.Id, Maintenance_Request__c = MntRequest.id);
        
        insert wp;
        
        MntRequest.Status = 'Closed';
        
        update MntRequest;    
    }
    
    @isTest
    static void testRequest2() {
        List<Case> caseList = new List<Case>();
        For(Integer i=1 ;i<=300 ; i++) {
            
            Case c = new Case(
                type = 'Routine Maintenance',
                status = 'Closed',
                origin = 'Web',
                Subject = null,
                Date_Reported__c = Date.today(),
                Vehicle__c = null,
                Equipment__c = null,
                Date_Due__c = Date.today());
            caseList.add(c);
        }                 
    } 
}