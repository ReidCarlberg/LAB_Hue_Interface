public class LAB_HueController{

    public Boolean getSetupComplete() {
        return new LAB_Hue_SetupController().getSetupComplete();
    }
    
    public void allOn() {
        insertMessage('allon');
    }
    
    public void allOff() {
        insertMessage('alloff');
    }

    public void allWhite() {
        insertMessage('allwhite');
    }
    
    public void allRed() {
        insertMessage('allred');
    }
    
    public void siren() {
        insertMessage('siren');
    }

    public void random() {
        insertMessage('random');
    }
    
    public void insertMessage(String message) {
        Hue_Message__c m = new Hue_Message__c();
        m.Message__c = message;
        insert m;
    }
}