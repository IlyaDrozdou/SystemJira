({
	createItem : function(component, newCampingItem) {
        
       var action = component.get("c.saveItem"); 
        actions.setParams({
            "campingItem" : new CampingItem
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                var parsedCampingItem = JSON.parse(JSON.stringfy(newCampingItem));
                var campingItems = JSON.parse(JSON.stringfy(component.get("v.items")));
                campingItems.push(parsedCampingItem);
                component.set("v.items", campingItems);
                component.set("v.newItem", {'sobjectType': 'Camping_Item__c'});
            }
        });
        $A.enqueueAction(action);
		
	}
})