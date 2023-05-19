import { LightningElement } from 'lwc';
import PRODUCT_OBJECT from '@salesforce/schema/Ecommerce_Product__c';
import NAME_FIELD from '@salesforce/schema/Ecommerce_Product__c.Name';
import TITLE_FIELD from '@salesforce/schema/Ecommerce_Product__c.Title__c';
import PRICE_FIELD from '@salesforce/schema/Ecommerce_Product__c.Price__c';
import RATING_FIELD from '@salesforce/schema/Ecommerce_Product__c.Rating__c';
import BRAND_FIELD from '@salesforce/schema/Ecommerce_Product__c.Brand__c';
import THUMBNAIL_FIELD from '@salesforce/schema/Ecommerce_Product__c.Thumbnail__c';
import DESCRIPTION_FIELD from '@salesforce/schema/Ecommerce_Product__c.Desccription__c';
import DISCOUNT_PERCENTAGE_FIELD from '@salesforce/schema/Ecommerce_Product__c.Discount_Percentage__c';
import STOCK_FIELD from '@salesforce/schema/Ecommerce_Product__c.Stock__c';
import CATEGORY_FIELD from '@salesforce/schema/Ecommerce_Product__c.Category__c';
import THUMBNAIL_IMAGE_FIELD from '@salesforce/schema/Ecommerce_Product__c.Thumbnail_Image__c';


import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import {shortToatsEvent} from 'lightning/platformShowToastEvent';

export default class RecordEditFormAccount extends LightningElement {
    objectName = PRODUCT_OBJECT;
    recordId = "a09Dn000001voysIAA";
    fields = {
        name: NAME_FIELD, 
        titlee:TITLE_FIELD, 
        price:PRICE_FIELD, 
        rating:RATING_FIELD, 
        brand:BRAND_FIELD, 
        thumbnail: THUMBNAIL_FIELD,
        description:DESCRIPTION_FIELD,
        discountPercentage: DISCOUNT_PERCENTAGE_FIELD,
        stock: STOCK_FIELD,
        category: CATEGORY_FIELD,
        thumbnailImage: THUMBNAIL_IMAGE_FIELD};

    successHandler() {
        const evt = new ShowToastEvent({
            title:"Success",
            message:"Ecommerce Product information has been saved successfully!",
            variant:"success"
        });
        this.dispatchEvent(evt);
    }
}