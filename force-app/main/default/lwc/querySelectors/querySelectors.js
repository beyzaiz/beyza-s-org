import { LightningElement } from 'lwc';

export default class QuerySelectors extends LightningElement {

    fruits = ["Banana", "Apple", "Pomogranete", "Mango"];

    clickHandler() {
        //querySelector demo
        const h1elem = this.template.querySelector('h1');
        console.log(h1elem.innerText);
        h1elem.style.color ="#343aeb";
        h1elem.style.border = "2px solid #1a612d";
        h1elem.style.background = "#d11956";
   
        const pelem = this.template.querySelector('p');
        console.log(pelem.innerText);
        pelem.style.color = "#114f22";
        pelem.style.border = "4px solid #bf1967";
        pelem.style.background = "yellow";

        //qerySelectors demo
        const divelems = this.template.querySelectorAll('div.child'); 
        divelems.forEach(item =>{
            console.log(item.innerText);
            item.setAttribute("class", "slds-align_absolute-center");
        })
       
    }
}