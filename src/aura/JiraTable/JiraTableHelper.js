({
    init : function(component) {
        var action = component.get('c.takeData');

        action.setCallback(this, function(actionResult) {
            component.set('v.mainTable', actionResult.getReturnValue());
        });
        $A.enqueueAction(action);

    }
});