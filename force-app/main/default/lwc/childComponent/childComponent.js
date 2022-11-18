import { LightningElement, api } from 'lwc';

export default class ChildComponent extends LightningElement {
    @api trainingName = 'LWC Training';
    @api thankyou = 'Thank you for joining';
    @api
    childFunction(){
        this.thankyou = 'Thank you again';
    }

}