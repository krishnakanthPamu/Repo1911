import { LightningElement } from 'lwc';
export default class CallChildComponentMethod extends LightningElement {
		enteredText ;
		
		captureEnteredText(event){
				this.enteredText = event.target.value;
				// alert(this.enteredText);
		}
		
		callChildMethod(){
				// alert(this.enteredText);
				this.template.querySelector("c-pop-up-new").passContent(this.enteredText);
		}
}