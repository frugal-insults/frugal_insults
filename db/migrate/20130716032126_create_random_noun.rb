class CreateRandomNoun < ActiveRecord::Migration
  def change
    create_table :random_nouns do |t|
      t.string :word
      t.integer :score
    end
  end
end
