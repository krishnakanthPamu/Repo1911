import { LightningElement, track } from 'lwc';

export default class UdemyBmiCalcualtorWithObject extends LightningElement {

    @track bmiResult = {
        Weight : 0,
        Height : 0,
        Result : 0
    }
/*
    weight;
    height;
    @track Result;
*/    displayResult=false;

    getWeight(event){
        this.bmiResult.Weight = parseFloat(event.target.value);
        console.log('Weight--->', this.bmiResult.Weight);
    }
    getHeight(event){
        this.bmiResult.Height = parseFloat(event.target.value);
        console.log('height--->', this.bmiResult.Height);
    }

    calBMI(){
        try{
            console.log('in try');
            console.log('height--->', this.bmiResult.Height);
            console.log('Weight--->', this.bmiResult.Weight);
            
            this.bmiResult.Result = this.bmiResult.Weight / (this.bmiResult.Height * this.bmiResult.Height);
            this.displayResult = true;
        }catch{
            this.bmiResult.Result = undefined;
        }
    }
    
    get bmiValue(){
        return `Your BMI value/result is ${this.bmiResult.Result}`;
    }
}