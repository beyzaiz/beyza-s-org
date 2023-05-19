import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    fullName = "Balakrishna";
    title = "Salesforce Devoloper";
    age = 30;

    titleChangeHandler(event){
        this.title = event.target.value;
    }
}