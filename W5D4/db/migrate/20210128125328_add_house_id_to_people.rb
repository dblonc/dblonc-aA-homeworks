class AddHouseIdToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column(:people, :house_id, :integer, {null: false})
  end
end
