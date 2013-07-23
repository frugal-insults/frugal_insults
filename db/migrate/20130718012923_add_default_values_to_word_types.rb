class AddDefaultValuesToWordTypes < ActiveRecord::Migration
  def change
    change_column :mean_adjectives, :score, :integer, :default => 0
    change_column :crude_nouns, :score, :integer, :default => 0
    change_column :random_nouns, :score, :integer, :default => 0
  end
end
