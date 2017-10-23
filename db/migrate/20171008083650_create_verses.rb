class CreateVerses < ActiveRecord::Migration[5.1]
  def change
    create_table :verses do |t|
      t.string :content
      t.references :chapter

      t.timestamps
    end
  end
end
