# require 'rspec/expectations' 

# Describe "Serler" do
# end

# Describe "static pages" do
#     Describe "Home page" do
#         It "should have the content'Serler'" do
#             Visit "/"
#             page.should have content ('Serler')
#         end
#     end
    
#     Describe "Advanced Search" do
#         it "should have the content" do
#             visit '/searches/new'
#             page.should have content ("Advanced search")
            
#         end
#     end
# end



# When(/^I go to the homepage$/) do
#   visit root_path
# end

# Then(/^I should see the welcome message$/) do
#   expect(page).to have_content("Hello Cucumber")
# end

Given(/^I have opened root path$/) do
  visit root_path
end


When(/^I search for title contains "([^"]*)"$/) do |content|
  fill_in "search", :with => content
end

When(/^I click the search button$/) do
  click_button "Search"
end

Then(/^I should see a list of articles$/) do 
  expect(page).to have_current_path("/articles?utf8=%E2%9C%93&search=Design")
  # sexpect(page).to have_selector("div#cTitle sorting_asc")
  page.should have_content("Title")
end
