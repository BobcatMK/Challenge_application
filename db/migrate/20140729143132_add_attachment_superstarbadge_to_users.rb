class AddAttachmentSuperstarbadgeToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :superstarbadge
    end
  end

  def self.down
    remove_attachment :users, :superstarbadge
  end
end
