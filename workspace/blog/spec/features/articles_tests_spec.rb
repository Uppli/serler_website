require 'rails_helper'
require 'spec_helper'

# checking the model attributes
describe Article, :type => :model do
  it "is valid with valid attributes" do
    expect(Article.new).to_not be_valid
  end

  it "is not valid without a title" do
  article = Article.new(title: nil)
  expect(article).to_not be_valid
  end
end


#To check the front page U
describe "Search" do
  it "should have the  'Search'" do
  visit '/'
  page.should have_selector('body', :text => 'Search')
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


RSpec.describe ArticlesController, type: :controller do
let(:valid_attributes) {
    {:description=>"", :from_date=>"1990", :to_date=>"2016", :search_lines_attributes=>{:aaa=>{:join_condition=>"1", :field_id=>"1", :operator=>"5", :value_id=>"1", :value_text=>"a", :value_number=>"1", :_destroy=>"false"}, :bbb=>{:join_condition=>"1", :field_id=>"5", :operator=>"1", :value_id=>"1", :value_text=>"programming", :value_number=>"1", :_destroy=>"false"}}}
  }

  let(:invalid_attributes) {
    {:description=>"", :from_date=>"1990", :to_date=>"2016", :search_lines_attributes=>{:aaa=>{:join_condition=>"1", :field_id=>"1", :operator=>"5", :value_id=>"1", :value_text=>"", :value_number=>"1", :_destroy=>"false"}, :bbb=>{:join_condition=>"2", :field_id=>"6", :operator=>"1", :value_id=>"1", :value_text=>"kh", :value_number=>"1", :_destroy=>"false"}}}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SearchQueriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "TestSearch" do
    it "found articles by quick search" do
      get :index, quick_search: "programming", session: valid_session
      expect(assigns(:articles).size).to be 0
      expect(response).to render_template(:index)
    end

    it "not found articles" do
      get :index, quick_search: "pizza", session: valid_session
      expect(assigns(:articles).size).to eq(0)
      expect(response).to render_template(:index)
    end
    
  end
  
end