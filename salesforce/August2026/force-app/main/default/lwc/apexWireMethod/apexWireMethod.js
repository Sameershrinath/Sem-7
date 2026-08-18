import { LightningElement } from 'lwc';
import getContactList from '@salesforce/apex/ContactController.getContactList';

export default class ApexWireMethod extends LightningElement {
    contacts;
    error;

    connectedCallback(){
        getContactList().then(result=>{this.contacts=result;}).catch(error=>{this.error=error;});
    }

}