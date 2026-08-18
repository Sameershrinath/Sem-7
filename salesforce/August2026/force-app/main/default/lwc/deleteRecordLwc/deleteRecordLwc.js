import { LightningElement ,api} from 'lwc';
import {deleteRecord} from 'lightning/uiRecordApi';


export default class DeleteRecordLwc extends LightningElement {
    @api recordId;

    handleDelete(){
        deleteRecord(this.recordId).then(()=>{console.log('Record Deleted Successfully');}).catch(error=>{console.log(error);});
    }
}