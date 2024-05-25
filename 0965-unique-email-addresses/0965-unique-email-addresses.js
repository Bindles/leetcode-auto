/**
 * @param {string[]} emails
 * @return {number}
 */
var numUniqueEmails = function(emails) {
  return new Set(emails.map(email => email.substr(0, email.search(/[+@]/)).replaceAll('.', '') + email.substr(email.search('@')))).size
};