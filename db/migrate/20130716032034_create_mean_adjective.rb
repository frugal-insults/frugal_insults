class CreateMeanAdjective < ActiveRecord::Migration
  def change
    create_table :mean_adjectives do |t|
      t.string :word
      t.integer :score
    end
  end
end
