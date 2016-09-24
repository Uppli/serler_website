require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'SERLER'" do
    visit '/'
    page.should have content('SERLER')
  end
end

describe "Advanced Searche" do
  it "should have the content 'Advanced Search'" do
    visit '/searches/new'
    page.should have content('Advanced Search')
end
end
end