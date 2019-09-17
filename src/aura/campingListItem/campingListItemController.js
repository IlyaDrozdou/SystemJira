({
	packItem : function(component, event, helper) {
     
        component.set("v.item.Packed__c", true);
        
       
	},
    
    unpackItem : function(component, event, helper) {
        var item = component.get('v.item');
        item.Packed__c = true;
        component.set('v.item', item);
        
       	}
})