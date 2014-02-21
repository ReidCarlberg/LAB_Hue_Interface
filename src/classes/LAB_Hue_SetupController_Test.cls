@isTest
public class LAB_Hue_SetupController_Test{

    static testmethod void testSetupComplete() {
        LAB_Hue_SetupController ctrl = new LAB_Hue_SetupController();
        System.assert(!ctrl.getSetupComplete());
        
        ctrl.handlePushTopic(); 
        
        System.assert(ctrl.getSetupComplete());
    }
}