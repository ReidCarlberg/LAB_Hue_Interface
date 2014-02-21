@istest
public class LAB_Hue_Test{

    //test lead trigger
    static testmethod void testLeadInsert() {
        
        List<Hue_Message__c> base = [Select Id From Hue_Message__c];
        System.assert(base.size() == 0);
        
        Lead newLead = new Lead();
        newLead.firstName = 'Reid';
        newLead.LastName = 'Carlberg';
        newLead.Email = 'reid.carlberg@gmail.com';
        newLead.Company = 'SampleCompany';
        insert newLead;

        List<Hue_Message__c> newMessages = [Select Id From Hue_Message__c];
        System.assert(newMessages.size() == 1);
        
    }
    
    static testmethod void testMessages() {
     	LAB_HueController cntrl = new LAB_HueController();
        
        List<Hue_Message__c> base = [Select Id from Hue_Message__c];
        System.assert(base.size() == 0);
        
        cntrl.allOn();
        
        cntrl.allOff();
        
        cntrl.allRed();
        
        cntrl.allWhite();
        
        cntrl.random();
        
        cntrl.siren();

        List<Hue_Message__c> newMessages = [Select Id from Hue_Message__c];
        System.assert(newMessages.size() == 6);        
        
    }
}