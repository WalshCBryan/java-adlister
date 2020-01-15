package models;

import java.util.List;

public interface Contacts {

    public List<Contact> getContacts();
    public long saveContact(Contact contact);
    public void deleteContactById(long id);
    public Contact getContactById(long id);


}
