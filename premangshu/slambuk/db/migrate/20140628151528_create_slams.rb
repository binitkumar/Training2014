class CreateSlams < ActiveRecord::Migration
  def change
    create_table :slams do |t|
      t.string :name
      t.string :email
      t.string :passyear

      t.timestamps
    end
  end
end
