# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  emails.uniq { |email| clean(email) }.count
end

def clean(email)
  local, domain = email.split('@')
  local.split('+').first.split('.').join + '@' + domain
end