class CreatTables < ActiveRecord::Migration
  def up
    create_table :kinds, {
                           :force => true,
                           :options => "ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;"
                       } do |t|
      t.string :name
    end unless table_exists?(:kinds)

    create_table :points, {
                            :force => true,
                            :options => "ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;"
                        } do |t|
      t.integer :kind_id
      t.column :position, :point, :null => false
      t.timestamps :null => false
    end unless table_exists?(:points)
  end

  def down
    drop_table :kinds if table_exists?(:kinds)
    drop_table :points if table_exists?(:points)
  end
end
