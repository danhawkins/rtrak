Given /^I am not logged in$/ do
  #no action required
end

Given /^I am logged in as a generic user$/ do
  @user = Factory(:generic_user, :username => 'test', :password => 'testing', :password_confirmation => 'testing')
  @user.save
  
  visit login_url
  fill_in 'username', :with => 'test'
  fill_in 'password', :with => 'testing'
  click_button 'Login'
  
  response.should contain('Successfully logged in.')
end
