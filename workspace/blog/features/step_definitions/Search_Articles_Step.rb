Given /^I have opened main page$/ do
 visit "http://serler-ashish3090.c9users.io:8080"
end

When /^ I search for title contains "One12345"$/ do
 pending
end

Then /^$I should see the list of artices with title contains "One12345"/ do
fil_in "search", :with => "One12345"
submit_form "Search"
end