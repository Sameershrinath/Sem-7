import { LightningElement, api } from 'lwc';
import { updateRecord } from 'lightning/uiRecordApi';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import ID_FIELD from '@salesforce/schema/Account.Id';

export default class UpdateLwc extends LightningElement {
    @api recordId;

    accountName;

    handleNameChange(event){
        this.accountName = event.detail.value;
    }

    updateAccount(){
        const fields = {};

        fields[ID_FIELD.fieldApiName] = this.recordId;
        fields[NAME_FIELD.fieldApiName] = this.accountName;

        const recordInput = { fields };

        updateRecord(recordInput)
        .then(() => {
            console.log('Record Updated Successfully');
        })
        .catch(error => {
            console.error(error);
        });
    }
}