import { LightningElement } from 'lwc';
import AIRLINES_OBJECT from '@salesforce/schema/Airlines__c'
import AIRLINES_ID from '@salesforce/schema/Airlines__c.Name'
import NAME_FIELD from '@salesforce/schema/Airlines__c.Name__c'
import LOGO_FIELD from '@salesforce/schema/Airlines__c.Logo__c'
import LOGO_URL_FIELD from '@salesforce/schema/Airlines__c.LogoURL__c'
import SLOGAN_FIELD from '@salesforce/schema/Airlines__c.Slogan__c'
import WEBSITE_FIELD from '@salesforce/schema/Airlines__c.Website__c'
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordFormAirlines extends LightningElement {
    objectName = AIRLINES_OBJECT;
    recordId = "a07Dn000002PlNxIAK";
    fields = [AIRLINES_ID, NAME_FIELD, LOGO_FIELD, LOGO_URL_FIELD, SLOGAN_FIELD, WEBSITE_FIELD];

    successHandler(){
        const evt = new ShowToastEvent({
            title:"Success",
            message: "Airlines detail has been saved successfully!",
            variant: "success"
        })
        this.dispatchEvent(evt);
    }
}