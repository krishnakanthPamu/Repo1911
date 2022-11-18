import { LightningElement, track } from 'lwc';
export default class BasicPopUp extends LightningElement {
		isModalOpen = false;
		
		openModal(){
				// alert('hi');
				this.isModalOpen = true;
		}
		
		closeModal(){
				// alert('in closeModal');
				this.isModalOpen = false;
		}
		
		submitModal(){
				// alert('in closeModal');
				this.isModalOpen = false;
		}
		
}