({
    doInit: function (component, event, helper) {
        helper.init(component);
    },
    openModel: function(component, event, helper) {
        var idContact = event.currentTarget.id;
        console.log(idContact)
        helper.popup(component, idContact)
        component.set("v.isModalOpen", true);
    },
    closeModel: function(component, event, helper) {
        component.set("v.isModalOpen", false);
    },
    submitDetails: function(component, event, helper) {
        component.set("v.isModalOpen", false);
    }
});