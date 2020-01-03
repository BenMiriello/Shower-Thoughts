class CreateDislikes < ActiveRecord::Migration[6.0]
  def change
    create_table :dislikes do |t|
      t.integer :user_id
      t.integer :thought_id

      t.timestamps
    end
  end
end
