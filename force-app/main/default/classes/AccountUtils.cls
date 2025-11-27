public class AccountUtils {
    public static List<Account> accountsByState(String billingState)
 {   return [Select Id,Name From Account Where BillingState=:billingState];
        
    }
}