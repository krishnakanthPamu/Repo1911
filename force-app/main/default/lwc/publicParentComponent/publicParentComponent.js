import { LightningElement } from 'lwc';

export default class PublicParentComponent extends LightningElement {
    handleInputChange(event){
        console.log('<<<inside the parent JS>>>');
    }
}