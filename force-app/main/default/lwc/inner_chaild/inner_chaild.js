import { api, LightningElement } from 'lwc';

export default class Inner_chaild extends LightningElement 
{
    @api trainingName='lwc child trainingname call';
    @api thankyou='thank you for calling child';
    changeTraining()
    {
        this.thankyou = 'thank you agin form child';
    }
}