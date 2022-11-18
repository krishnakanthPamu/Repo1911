import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
    myVar='LWC';
    parentPassVar='passed from parent to child - initial value';
    
    changeParentVar(){
        this.myVar = 'LWC Training from Parent';
    }

    changeChildVar(){
        this.parentPassVar='passed from Parent to Child';
    }

    parentFunctionToCallChild(){
        this.template.querySelector('c-child-component').childFunction();
    }
}