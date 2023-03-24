@IsTest
private class AccountAutomationsTest {

    @isTest static void testDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description, 'When description is null, it is updated to Default description');

        acc.Description = 'New Description Manual';
        
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertNotEquals('Default description', acc.Description, 'When description is NOT null, it is NOT updated to Default description');
    }

    @isTest static void testDefaultBillingAddress(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = AccountAutomations.setDefaultBillingAddress(acc);
        System.assertEquals('Av Rio das Pedras, 2255', acc.BillingStreet, 'Default BillingStreet is Basauri, 6');
        System.assertEquals('Brazil', acc.BillingState, 'Default BillingState is Madrid');
        System.assertEquals('13425380', acc.BillingPostalCode, 'Default BillingPostalCode is 28023');
    }

    @isTest static void testDefaultShippingAddress(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = AccountAutomations.setDefaultShippingAddress(acc);
        System.assertEquals('Av Rio das Pedras, 2255', acc.ShippingStreet, 'Default ShippingStreet is Basauri, 6');
        System.assertEquals('Brazil', acc.ShippingState, 'Default Shippingtate is Madrid');
        System.assertEquals('13425380', acc.ShippingPostalCode, 'Default ShippingPostalCode is 28023');
    }

    @isTest static void testDefaultPhone(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = AccountAutomations.setDefaultPhone(acc);
        System.assertEquals('688456789', acc.Phone, 'Default phone number is 688456789');
    }

    @isTest static void testDefaultURL(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = AccountAutomations.setDefaultURL(acc);
        System.assertEquals('www.copa.do', acc.Website, 'Default website is www.copa.do');
    }

}