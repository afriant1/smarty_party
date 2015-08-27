class EditGuestTable < ActiveRecord::Migration
def change
    remove_column :guests, :name, :string
    remove_column :guests, :email, :string
    remove_column :guests, :gender, :string
    add_column :guests, :user_id, :integer

  end

end
