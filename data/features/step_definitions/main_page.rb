Given(/^I am at the "(.*?)" page$/) do |arg1|
        visit(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  page.should have_no_content(arg1)
end

When(/^I click on link name "(.*?)"$/) do |arg1|
  click_link(arg1)
end

When(/^I click on first link name "(.*?)"$/) do |arg1|
  first(:link, arg1).click
end

When(/^I click on link url "(.*?)"$/) do |arg1|
  find(:xpath, "//a[@href='"+arg1+"']").click
end

When(/^I click on button name "(.*?)"$/) do |arg1|
  click_button(arg1)
end

When(/^I fill by id "(.*?)" and "(.*?)" with "(.*?)" and "(.*?)"$/) do |username_input_id, password_input_id, username, password|
  fill_in username_input_id, :with => username
  fill_in password_input_id, :with => password

end

When(/^I fill "(.*?)" in id "(.*?)"$/) do |arg1, arg2|
  fill_in arg2, :with => arg1
end

When(/^I fill "(.*?)" in name "(.*?)"$/) do |arg1, arg2|
  fill_in(arg2, :with => arg1)
end

When(/^I wait "(.*?)" secs$/) do |arg1|
  sleep(arg1.to_i)
end

