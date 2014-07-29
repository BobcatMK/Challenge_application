class AddAcceptedToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :accepted, :integer, :default => 0
  end
end
