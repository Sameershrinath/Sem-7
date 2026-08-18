import { LightningElement, api, wire } from 'lwc';
import getAccountRecord from '@salesforce/apex/AccountController.getAccountRecord';

export default class CallingClassByLwc extends LightningElement {
@api recordId;

account;
error;

@wire(getAccountRecord,{recordId:'$recordId'})
wiredAccount({data,error}){
    if(data){
        this.account=data;
        this.error=undefined;
    }

    else if(error){
        this.error=error;
        this.account=undefined;
    }
}


}