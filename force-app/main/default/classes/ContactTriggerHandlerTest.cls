@isTest
public class ContactTriggerHandlerTest {
   @isTest
   private static void testValidation2() {
        contact c = new contact();
        c.lastname = 'test contact';
        c.LeadSource = 'Web';
        insert c;

        try{
        //update lead source field
        c.LeadSource = 'Phone';
        update c;
        }catch (Exception ex){
            System.debug('ex mesaage: '+ ex.getMessage());
            //assert
            assert.isTrue(ex.getMessage().containsIgnoreCase('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
        }
   }
}