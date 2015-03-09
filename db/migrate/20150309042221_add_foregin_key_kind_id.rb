class AddForeginKeyKindId < ActiveRecord::Migration
  def change
    add_foreign_key :points, :kinds, options: 'ON UPDATE CASCADE ON DELETE CASCADE'
  end
end
