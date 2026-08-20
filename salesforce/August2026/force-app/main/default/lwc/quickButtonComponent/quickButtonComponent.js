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
}