<aura:application extends="force:slds">
	<div>
        <p>
        	Hi... This display is from application level Markup.
        </p>
    </div>
    <c:Welcome_to_Lightning/>
    <c:Welcome_to_Lightning displayText="Text2"/>
    <c:Welcome_to_Lightning DisplayText="Text3"/>  <!--o/p is Text1 because it is CASE SENSITIVE-->
 
    
</aura:application>