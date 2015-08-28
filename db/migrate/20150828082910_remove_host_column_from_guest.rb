class RemoveHostColumnFromGuest < ActiveRecord::Migration
  def change
    remove_column :guests, :host, :boolean
  end
end
