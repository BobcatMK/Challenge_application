class AddLikeToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :like, :integer, :default => 0
  end
end
