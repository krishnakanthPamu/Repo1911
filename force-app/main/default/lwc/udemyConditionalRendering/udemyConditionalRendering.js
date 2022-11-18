import { LightningElement, track } from 'lwc';

export default class UdemyConditionalRendering extends LightningElement {
    @track showDiv = false;
    conditionalRendering(event) {
        this.showDiv = event.target.checked;
    }
}