class CreateMatriculations < ActiveRecord::Migration[5.2]
   def self.up
      create_table :matriculations do |t|
         
      end
   end

   def self.down
      drop_table :matriculations
   end
end
