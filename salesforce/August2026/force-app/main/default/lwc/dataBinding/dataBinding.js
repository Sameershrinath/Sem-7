import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {

    greeting = 'world';
    date = 0;

    handleChange(event){
        this.greeting = event.target.value;
    }

    increaseDate(){
        this.date = this.date + 1;
    }

    decreaseDate(){
        this.date = this.date - 1;
    }
}