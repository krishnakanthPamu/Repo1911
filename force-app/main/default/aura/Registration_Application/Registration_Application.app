<aura:application extends="force:SLDS" >
<!--    
    <aura:attribute type='boolean' name='openOrCloseRegistrationForm' default='false'/>
    <aura:attribute type='string' name='buttonText' default='Open the Registration Form'/>
    
    <br class='abcd'/>
    
    <lightning:button onclick='{!c.openOrCloseRegistrationFormComponent}'> {!v.buttonText} </lightning:button>
    
    
    <lightning:button label='{!v.buttonText}' onclick='{!c.openOrCloseRegistrationFormComponent}' name='buttonName'/>
    <aura:if isTrue='{!v.openOrCloseRegistrationForm}'>
    	<c:CandidateRegistrationForm/>
    </aura:if>
-->       
    <c:CandidateRegistrationForm/>
</aura:application>