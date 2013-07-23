class CreateCrudeNouns < ActiveRecord::Migration
  def change
    create_table :crude_nouns do |t|
      t.string :word
      t.integer :score

      t.timestamps
    end
  end
end
