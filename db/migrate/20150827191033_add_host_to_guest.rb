class AddHostToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :host, :boolean
  end
end
