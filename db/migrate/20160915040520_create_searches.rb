class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :title
      t.string :author
      t.datetime :from_year
      t.datetime :to_year
      t.string :language
      t.string :research_method
      t.string :research_part
      t.string :se_method
      t.string :methodology
      t.integer :rating

      t.timestamps
    end
  end
end
