import { LightningElement } from 'lwc';


export default class LifecycleHooksLwc extends LightningElement {
    showChild=true;

    handleToggle(event){
        this.showChild=event.target.checked;
    }

    constructor(){
        super();
        console.log('Constructor');
    }

    connectedCallback(){
        console.log('Connected Callback');
    }

    renderedCallback(){
        console.log('Rendered Callback');
    }

    errorCallback(error,stack){
        console.log('error:',error);
        console.log('Stack:',stack);
    }
}