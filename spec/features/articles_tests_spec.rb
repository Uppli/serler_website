require 'rails_helper'
require 'spec_helper'


describe "Serler" do
end
describe Article, :type => :model do
  it "is valid with valid attributes" do
    expect(Article.new).to_not be_valid
  end

  it "is not valid without a title" do
  article = Article.new(title: nil)
  expect(article).to_not be_valid
  end
end

describe "SERLER" do
  it "should have the  'SERLER'" do
  visit '/'
  page.should have_selector('h1', :text => 'SERLER')
  end
  it "should have the 'Listing articles'" do
  visit '/articles'
  page.should have_selector('h1', :text => 'Listing articles')
  end
  it "should have the 'Advanced Search'" do
  visit '/searches/new'
  page.should have_selector('h1', :text => 'Advanced Search')
  end
end
describe "SEARCH BUTTON" do
  it do
  visit '/'
  first('input[type="submit"]').click
  end
end



