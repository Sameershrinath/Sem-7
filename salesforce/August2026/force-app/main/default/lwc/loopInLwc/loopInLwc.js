import { LightningElement } from 'lwc';

export default class LoopInLwc extends LightningElement {
    nums;

    handleClick(){
        this.nums=[1,2,3,4,5,6,7,8,9];
    }
    
    handleClickRemove(){
        this.nums=null;
    }

}