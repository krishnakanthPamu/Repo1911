import { api } from 'lwc';
import LightningModal from 'lightning/modal';

export default class PopUpNew extends LightningModal {
		@api content;
		showChildModal = false;
		
		handleOkay() {
				// alert('in child method');
				this.showChildModal = false;
        //this.close('okay');
				
    }
		
		closeModal(){
				this.showChildModal = false;
		}
		
		@api passContent(data1){
				// alert(data1);
				this.content = data1;
				this.showChildModal = true;
		}
}