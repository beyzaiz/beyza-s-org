import { LightningElement } from 'lwc';

export default class MyNameAndRole extends LightningElement {
    username;
    role;

    usernameChangeHandler(event) {
        this.username=event.target.value;

    }
    roleChangeHandler(event) {
        this.role=event.target.value;
    }
    get options(){
    
        return [
            {label: "Salesforce Admin", value: "Salesforce Admin"},
            {label: "Salesforce Developer", value: "Salesforce Developer"},
            {label: "Salesforce Architect", value: "Salesforce Architect"}
            

        ];
    }
}