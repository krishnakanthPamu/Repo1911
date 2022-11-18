import { LightningElement } from 'lwc';

export default class Parent_test extends LightningElement
 {
     myvar='DFSM';
     train='Parent JS LWC Training';
     changename()
     {
         this.myvar = 'Tcs parent';
        
     }
     changevar()
     {
         this.myvar='changed DFSm parent';
         this.train='Changed lwc training parent';
     }
     callchild()
     {
        this.template.querySelector('c-inner_chaild').changeTraining();
     }
 }