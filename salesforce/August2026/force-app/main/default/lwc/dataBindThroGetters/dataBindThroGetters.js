import { LightningElement } from 'lwc';

export default class DataBindThroGetters extends LightningElement {
    fname="";
    lname="";
    handleChange(event){
        const field=event.target.name;
        if(field==="fname"){
            this.fname=event.target.value;
        }
        else if (field ==="lname"){
            this.lname=event.target.value;

        }
    }
    get uppercaseFullname(){
        return `${this.fname} ${this.lname}`.toUpperCase();
    }

}