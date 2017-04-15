class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.string :token
      t.datetime :created_at
      t.datetime :accepted_at
      t.references :created_by_user, foreign_key: { to_table: :users }
      t.references :claimed_by_user, foreign_key: { to_table: :users }

      t.timestamps
    end
    add_index :invitations, :token
  end
end
