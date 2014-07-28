class CreateLikeits < ActiveRecord::Migration
  def change
    create_table :likeits do |t|
      t.integer :answer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
