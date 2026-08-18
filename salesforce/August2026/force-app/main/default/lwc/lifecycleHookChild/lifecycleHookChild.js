import { LightningElement } from 'lwc';

export default class LifecycleHookChild extends LightningElement {
    connectedCallback(){
        throw new Error ('This is a test error');
    }

    disconnectedCallback(){
        console.log('Disconnected Call back');
    }
}