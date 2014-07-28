class CreateLikers < ActiveRecord::Migration
  def change
    create_table :likers do |t|
      t.integer :answer_like

      t.timestamps
    end
  end
end
