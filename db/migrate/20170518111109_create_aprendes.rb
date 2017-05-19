class CreateAprendes < ActiveRecord::Migration
  def change
    create_table :aprendes do |t|

      t.timestamps null: false
    end
  end
end
