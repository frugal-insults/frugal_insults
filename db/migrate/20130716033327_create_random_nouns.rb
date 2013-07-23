class CreateRandomNouns < ActiveRecord::Migration
  def change
    create_table :random_nouns do |t|
      t.string :word
      t.integer :score

      t.timestamps
    end
  end
end
