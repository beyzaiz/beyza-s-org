import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name //undefined
    fullName = "Balakrishna";
    age = 30;
    location = {
        city: "Houston",
        country: "United States",
        postalCode: "50031"
    };
    birds = ["Crown", "Swan", "Sparrow", "Peacock"];
}