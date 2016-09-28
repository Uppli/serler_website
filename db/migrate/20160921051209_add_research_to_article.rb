class AddResearchToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :keywords, :string
    add_column :articles, :research_method, :string
    add_column :articles, :research_part, :string
    add_column :articles, :se_method, :string
    add_column :articles, :methodology, :string
    add_column :articles, :rating, :integer
  end
end
