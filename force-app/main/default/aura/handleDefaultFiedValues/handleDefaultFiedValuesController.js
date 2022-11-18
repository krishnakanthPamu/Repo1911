// auraNewAccountOverrideController.js
({
    handleCreateLoad: function (cmp, event, helper) {
        var pageRef = cmp.get("v.pageReference");
        var defaultFieldValues = cmp.find("pageRefUtils").decodeDefaultFieldValues(pageRef.state.defaultFieldValues);
    
        var nameFieldValue = cmp.find("nameField").set("v.value", defaultFieldValues.Name);
        var numOfEmpFieldValue = cmp.find("numOfEmpField").set("v.value", defaultFieldValues.NumberOfEmployees);
        var ownerIdFieldValue = cmp.find("ownerIdField").set("v.value", defaultFieldValues.OwnerId);
        var customCheckFieldValue = cmp.find("customCheckField").set("v.value", defaultFieldValues.CustomCheckbox__c === 'true');
    }
})