class CreateComunidads < ActiveRecord::Migration
  def change
    create_table :comunidads do |t|

      t.timestamps null: false
    end
  end
end
