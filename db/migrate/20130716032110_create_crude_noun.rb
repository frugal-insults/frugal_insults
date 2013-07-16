class CreateCrudeNoun < ActiveRecord::Migration
  def change
    create_table :crude_nouns do |t|
      t.string :word
      t.integer :score
    end
  end
end
