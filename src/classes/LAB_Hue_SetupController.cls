public class LAB_Hue_SetupController{

    Boolean isSetup = null;
	String pushTopicName = 'LAB_Hue_Messages';
    
    public LAB_Hue_SetupController() {
        if (Test.isRunningTest()) {
            pushTopicName = 'Test_LAB_Hue';
        }
    }
    
    public Boolean getSetupComplete() {
        List<PushTopic> hueTopic = [Select Id From PushTopic Where Name=:pushTopicName Limit 1];
        if (hueTopic.size() == 1) {
            isSetup = true;
        } else {
			isSetup = false;
        }
        return isSetup;
    }
    
    public void handlePushTopic() {
        PushTopic newHueTopic = new PushTopic();
        
        newHueTopic.Name = pushTopicName;
        newHueTopic.ApiVersion = 29.0;
        newHueTopic.IsActive = true;
        newHueTopic.NotifyForOperationCreate = true;
        newHueTopic.Query = 'Select Id, Message__c From Hue_Message__c';
        insert newHueTopic;
        isSetup = true;
    }
}