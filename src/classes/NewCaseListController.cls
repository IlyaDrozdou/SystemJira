/**
 * Created by user on 03-Sep-19.
 */

public with sharing class NewCaseListController {
    private List<Case> cases;
    public List<Case> getNewCases(){
        cases = [SELECT Id, CaseNumber FROM Case WHERE Status = 'New'];
            return cases;
    }

}