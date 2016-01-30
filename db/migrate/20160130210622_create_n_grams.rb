class CreateNGrams < ActiveRecord::Migration
  def change
    create_table :n_grams do |t|
      t.string :n_gram
      t.integer :document_id
      t.integer :location
    end
  end
end
