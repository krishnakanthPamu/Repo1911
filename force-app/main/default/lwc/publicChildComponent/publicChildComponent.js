import { LightningElement, api } from 'lwc';

export default class PublicChildComponent extends LightningElement {
    value = ['Red'];

    options = [
        { label: 'Red', value: 'Red' },
        { label: 'Yellow', value: 'Yellow' },
        { label: 'Green', value: 'Green' },
        { label: 'Blue', value: 'Blue' },
    ];

    @api
    findCheckbox(checkboxValue){
         const selectedCheckbox = this.options.find(checkbox => {
             return checkboxValue === checkbox.value;
         })

         if(selectedCheckbox){
            this.value = selectedCheckbox;
            return "Successfully Checked the Checkbox";
        }

        return "No Checkbox checked";
    }
}