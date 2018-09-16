class CreateMatriculations < ActiveRecord::Migration[5.2]
   def self.up
      create_table :matriculations do |t|
         t.column :student_id, :integer
	      t.column :institution_id, :integer
         t.column :due_date, :integer
         t.column :num_invoices, :integer
         t.column :total_value, :float
      end
   end

   def self.down
      drop_table :matriculations
   end
end
