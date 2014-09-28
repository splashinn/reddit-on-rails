class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_ud
      t.integer :group_id
      t.timestamps
    end
  end
end
