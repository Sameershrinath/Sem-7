import { LightningElement } from 'lwc';
import getContactList from '@salesforce/apex/ContactController.getContactList';

export default class ApexImperativeMethod extends LightningElement {
    contacts;
    error;

    handleLoad(){

    getContactList().then(result=>{this.contacts=result;}).catch(error=>{this.error=error;});
    }

    
    handleLoadRemove(){

        this.contacts=null;

    }
}