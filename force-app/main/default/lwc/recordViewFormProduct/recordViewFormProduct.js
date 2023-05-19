import { LightningElement } from 'lwc';
import PRODUCT_OBJECT from '@salesforce/schema/Ecommerce_Product__c';
import TITLE_FIELD from'@salesforce/schema/Ecommerce_Product__c.Title__c';
import PRICE_FIELD from '@salesforce/schema/Ecommerce_Product__c.Price__c';
import RATING_FIELD from '@salesforce/schema/Ecommerce_Product__c.Rating__c';
import BRAND_FIELD from '@salesforce/schema/Ecommerce_Product__c.Brand__c';
import STOCK_FIELD from '@salesforce/schema/Ecommerce_Product__c.Stock__c';
import CATEGORY_FIELD from '@salesforce/schema/Ecommerce_Product__c.Category__c';

export default class RecordViewFormProduct extends LightningElement {
    objectName = PRODUCT_OBJECT;
    recordId = "a09Dn000001voysIAA";
    fields = {
        title: TITLE_FIELD,
        price: PRICE_FIELD,
        rating: RATING_FIELD,
        brand: BRAND_FIELD,
        stock: STOCK_FIELD,
        category: CATEGORY_FIELD
    };
}