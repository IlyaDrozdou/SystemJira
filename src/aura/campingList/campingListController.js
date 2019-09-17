({
    clickCreateItem: function(component, event, helper) {
            var isFormValid = component.find("campingform").reduce(function(isValid, inputCmp){
                inputCmp.showHelpMessageIfInvalid();
           		return isValid && inputCmp.get("v.validity").valid;
        });
            
            if(isFormValid){
                console.log('newCampingItem');
                var newCampingItem = component.get("v.newItem");
                console.log('helper');
                helper.createItem(component, newCampingItem);
                console.log('createItem');
            }
    },
                                                                   
        
            
            
                
    doInit : function(component, event, helper) {
        // Create the action
        var action = component.get("c.getItems");
        // Add callback behavior for when response is received
        action.setCallback(this, function(response) {
            var campingItems = response.getState();
            if (campingItems === "SUCCESS") {
                component.set("v.items", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }
        });
        // Send action off to be executed
        $A.enqueueAction(action);
    
            
            
            
        
            
    }
   		    })