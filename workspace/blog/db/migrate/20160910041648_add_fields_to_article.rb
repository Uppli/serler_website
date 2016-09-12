class AddFieldsToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :Language, :string
    add_column :articles, :File_Type, :string
    add_column :articles, :Abstract, :string
    add_column :articles, :DOI, :string
    add_column :articles, :File_Size, :float
    add_column :articles, :File_URl, :string
    add_column :articles, :Author, :string
    add_column :articles, :Content, :string
    add_column :articles, :Keywords, :string
  end
end
