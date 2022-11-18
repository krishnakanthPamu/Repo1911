<aura:application extends="force:slds" >
	<p>
    	This text is from Country application...!
    </p>
    <aura:handler name="HPregisteredEvent" event="c:testComponentEvent" action="{!c.HPcountryfunction}" phase="bubble"/>
    
    <c:StateComponent/>
</aura:application>