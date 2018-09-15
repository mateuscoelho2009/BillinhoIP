class CreateGenders < ActiveRecord::Migration[5.2]
  def self.up
      
      create_table :genders do |t|
         t.column :name, :string, :limit => 50
      end
	
      Gender.create :name => "M"
      Gender.create :name => "F"
   end

   def self.down
      drop_table :genders
   end
end
