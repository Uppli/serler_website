class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :searches, :keywords, :keywords1
    rename_column :searches, :title, :title1
    rename_column :searches, :author, :author1
    rename_column :searches, :language, :language1
    rename_column :searches, :research_method, :research_method1
    rename_column :searches, :research_part, :research_part1
    rename_column :searches, :se_method, :se_method1
    rename_column :searches, :methodology, :methodology1
    rename_column :searches, :rating, :rating1
    
  end
end
