/**
 * Created by user on 30-Aug-19.
 */

trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    ClosedOpp.closingopp(Trigger.new);

}