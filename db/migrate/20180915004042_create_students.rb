class CreateStudents < ActiveRecord::Migration[5.2]
   def self.up
      create_table :students do |t|
         t.column :name, :string, :limit => 50
         t.column :cpf, :string, :limit => 50
         t.column :gender_id, :integer
         t.column :payment_method_id, :integer
         t.column :birth_date, :date
         t.column :cellphone, :integer
      end
   end

   def self.down
      drop_table :students
   end
end
