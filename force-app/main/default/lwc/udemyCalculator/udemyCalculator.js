import { LightningElement, track } from 'lwc';

export default class UdemyCalculator extends LightningElement {
    @track result;
    firstN;
    secondN;
    getNumber(event){
        
        if(event.target.label === 'FirstNumber'){
            console.log('event first');
            this.firstN = parseFloat(event.target.value);
        }else if(event.target.label === 'SecondNumber'){
            console.log('event second');
            this.secondN = parseFloat(event.target.value);
        }
    }
    calculate(event){
        
        this.result = (this.firstN) + (this.secondN);
        console.log('result>>>> ' + result);
    }
}