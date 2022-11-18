import { LightningElement } from 'lwc';
import { createRecord } from "lightning/uiRecordApi"

export default class LwcLDS_CreateRecord extends LightningElement {
		accountName;
		accountPhone;		
		accountWebsite;

		accountNameChangeHandler(event){
				this.accountName = event.target.value;
		}

		accountPhoneChangeHandler(event){
				this.accountName = event.target.value;
		}

		accountWebsiteChangeHandler(event){
				this.accountWebsite = event.target.value;
		}

		createAccountMethod(){
				const fields = {'Name' : this.accountName, 'Phone' : this.accountName, 'Website' : this.accountWebsite};
				const recordInput ={apiName : 'Account', fields };

				createRecord(recordInput).then(response => {
						console.log('account has been created: ' + response);
						console.log('account has been created: ' + response.Id);
				}).catch(error => {
						console.log('error has been created: ' + error);
						console.log('error has been created: ' + error.body.message);
				});
		}
}