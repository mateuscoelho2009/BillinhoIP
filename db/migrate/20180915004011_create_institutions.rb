class CreateInstitutions < ActiveRecord::Migration[5.2]
   def self.up
      create_table :institutions do |t|
         t.column :name, :string, :limit => 50
         t.column :cnpj, :string, :limit => 50
         t.column :kind_id, :integer
      end
   end

   def self.down
      drop_table :institutions
   end
end
