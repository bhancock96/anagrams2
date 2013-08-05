class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :signature
      t.timestamps
    end

    add_index :words, :signature
  end
end
