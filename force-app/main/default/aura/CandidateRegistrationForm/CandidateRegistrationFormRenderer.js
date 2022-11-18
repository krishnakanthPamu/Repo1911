({
	// Your renderer method overrides go here
    render:function(component, helper){
        //Call base render method
        var a = this.superRender();
        //Custom Rendering
        console.log('This text is from render function which is called when the component is initiated');
        return a;
        //return null; //will give an error...
    },
    afterRender:function(component, helper){
        //Call base afterRender method.
        var a = this.superAfterRender();
        //interact with DOM elements.
        console.log("This text displayed after render is over... from afterRender function");
	},
    
    rerender:function(component, event){
        //Call base reRender method.
        this.superRerender();
        //custom Rerendering
        console.log('This text is from Rerender function which is executed when an event/change occurs.');
    },
    
    unrender:function(component, event){
		//Call base unrender method.
		this.superUnrender();   
        //Call custom unrender.
        console.log('This text is from Unrender function which is executed at the end of the component');
	}
})