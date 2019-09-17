({
    init : function(component) {
        var action = component.get('c.takeData');

        action.setCallback(this, function(actionResult) {


            component.set('v.mainTable', actionResult.getReturnValue());
        });
        $A.enqueueAction(action);

    },

    popup : function(component, idContact) {
        var action = component.get('c.takeNewData');
        action.setParams({id : idContact});

        action.setCallback(this, function(actionResult) {
            console.log(actionResult.getReturnValue());
            component.set('v.miniTable', actionResult.getReturnValue());

        });
        $A.enqueueAction(action);
    }
})