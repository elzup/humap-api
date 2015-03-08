class CreateMtests < ActiveRecord::Migration
  def change
    create_table :mtests do |t|
      t.string :name
    end
  end
end
