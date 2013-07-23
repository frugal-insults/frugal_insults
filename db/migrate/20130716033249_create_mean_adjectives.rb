class CreateMeanAdjectives < ActiveRecord::Migration
  def change
    create_table :mean_adjectives do |t|
      t.string :word
      t.integer :score

      t.timestamps
    end
  end
end
