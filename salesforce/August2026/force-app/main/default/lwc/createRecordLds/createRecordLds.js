import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';

export default class CreateRecordLds extends LightningElement {

    accountName;

    handleNameChange(event){
        this.accountName=event.detail.value;
    }

    createAccount(){
        const fields ={};

        fields[NAME_FIELD.fieldApiName]=this.accountName;

        const recordInput={
            apiName: ACCOUNT_OBJECT.objectApiName,
            fields
        };
        createRecord(recordInput).then(result=>{console.log('Record Created Id:',result.id);

        }).catch(error=>{console.error(error);
        });
    }
}