@isTest
public class AccountMandatory_Testinsert {
    //Merge from Dev to Master
    /*@isTest
    public static void  testCASEOBJINSERT(){
        try{
        Case cc=new Case(PRX_Irrelevant__c=false);
        insert cc;
        //PRX_ACCCONMANDATORY.handleLogicForinsert();
            
        }
        catch(Exception e){
        System.debug('e'+e.getMessage());
        system.assert(e.getMessage().contains(System.Label.PRX_Acc_Con_MandatoryError));
            }
    }*/
    
     @isTest
    public static void  testCASEOBJUPDATE(){
        try{
        Case cc=new Case(PRX_Irrelevant__c=true);
		insert cc;
		cc.PRX_Irrelevant__c=false;        
        //cc.PRX_Irrelevant__c=false;
        update cc;
       System.debug('cc.PRX_Irrelevant__c'+cc.PRX_Irrelevant__c);
        //PRX_ACCCONMANDATORY.handleLogicForUpdate();
            
        }
        catch(Exception e){
        System.debug('2e'+e.getMessage()+e.getStackTraceString());    
        system.assertEquals(PRX_ACCCONMANDATORYFLAG.avoidValidation, false);
        //system.assert(e.getMessage().contains(System.Label.PRX_Acc_Con_MandatoryError));
            }
    }
}
