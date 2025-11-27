public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,String postalCode)
    {
        List<Contact> con=[Select Id,Name from Contact where LastName=:lastName AND MailingPostalCode=:postalCode];
        return con;
    }

}