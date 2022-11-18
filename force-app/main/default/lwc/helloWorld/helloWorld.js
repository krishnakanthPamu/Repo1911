import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Binding between html to js and vice versa implemented in this LWC';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}