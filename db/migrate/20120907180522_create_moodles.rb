class CreateMoodles < ActiveRecord::Migration
  def change
    create_table :moodles do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
