class CreateMatriculations < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculations do |t|

      t.timestamps
    end
  end
end
