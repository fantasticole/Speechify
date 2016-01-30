class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
      t.string :title
      t.string :author
      t.string :full_text
    end
  end
end
