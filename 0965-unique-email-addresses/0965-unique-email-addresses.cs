public class Solution {
    public int NumUniqueEmails(string[] emails) =>
        emails.Select(email => email.Substring(0, System.Text.RegularExpressions.Regex.Match(email, "[+@]").Index).Replace(".", "") + email.Substring(email.IndexOf('@'))).Distinct().Count();
}