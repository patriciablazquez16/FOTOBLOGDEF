class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|

      t.timestamps null: false
    end
  end
end
