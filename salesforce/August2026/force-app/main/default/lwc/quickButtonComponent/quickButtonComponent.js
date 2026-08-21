import { LightningElement, track,api} from 'lwc';

export default class QuickButtonComponent extends LightningElement {

    @track info = {
        name: 'Sameer Shrinath'
    };

    @track anotherinfo = {
        className: 10
    };

    personName='World';

    changeName() {
        this.info.name = 'Sumit Prakash';
    }

    changeClass() {
        this.anotherinfo.className = 12;
    }

    personNameUpdate(event){
        this.personName=event.target.value;
    }


//Requirement 3
billingAddress='';
mailingAddress=''

updatebillingAddress(event){
    this.billingAddress=event.target.value;
}
copybillingAddressToMaillingAddress(){
    this.mailingAddress=this.billingAddress;
}

//Requirement 4
inches=0;
feet=0;

assignFeet(event){
    this.feet=event.target.value;
}
feetToInches(){
this.inches=this.feet*12;
}


}