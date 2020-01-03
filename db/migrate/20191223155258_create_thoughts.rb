class CreateThoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :thoughts do |t|
      t.string :text
      t.belongs_to :user

      t.timestamps
    end
  end
end
