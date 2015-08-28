class ChangePartyDateFromStringToDate < ActiveRecord::Migration
def self.up
    change_table :parties do |t|
      t.change :date, :date
    end
  end
  def self.down
    change_table :parties do |t|
      t.change :date, :string
    end
  end
end
