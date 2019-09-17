public with sharing class ContactsListController {
    private String sortOrder = 'LastName';

        public List<Contact> getContacts() {

        List<Contact> results = Database.query(
        'SELECT Id, FirstName, LastName, Title, Email ' +
        'FROM Contact ' +
        'ORDER BY ' + sortOrder + ' ASC ' + ' NULLS LAST ' +
        'LIMIT 130'
        );
        return results;
    }
    public void sortByLastName() {
        this.sortOrder = 'LastName';
    }

    public void sortByFirstName() {
        this.sortOrder = 'FirstName';
    }

}