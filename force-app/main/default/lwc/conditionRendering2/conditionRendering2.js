import { LightningElement } from 'lwc';

export default class ConditionRendering2 extends LightningElement {
    showContent = true;

    clickHandler(){
        this.showContent = !this.showContent;
    }
}