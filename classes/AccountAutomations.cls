public class AccountAutomations {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description';
            return a;
        }
    }
    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = 'Av Rio das Pedras, 2255'; 
        a.billingstate = 'Brazil'; 
        a.billingpostalcode ='13425380'; 
        return a;
    }
    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = 'Av Rio das Pedras, 2255'; 
        a.shippingstate = 'Brazil';
        a.shippingpostalcode ='13425380';
        return a;
    }
    public static Account setDefaultPhone(Account a) {
        a.Phone='688456789';
        return a;
    }
    public static Account setDefaultURL(Account a) {
        a.website = 'www.copa.do'; 
        return a;
    }
}