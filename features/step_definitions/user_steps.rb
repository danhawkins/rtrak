Given /^I have the following users:$/ do |user_details|
  user_details.hashes.each do |hash|
    User.create!(hash)
  end
end