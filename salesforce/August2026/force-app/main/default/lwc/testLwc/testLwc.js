import { LightningElement } from 'lwc';

export default class TestLwc extends LightningElement {
    dob=0;
    age=0;

    setDob(event){
        this.dob=event.target.value;
    }
    calculateAge(){
        this.age=2026-this.dob;
    }
}