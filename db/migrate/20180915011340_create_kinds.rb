class CreateKinds < ActiveRecord::Migration[5.2]
  def self.up
      
      create_table :kinds do |t|
         t.column :name, :string, :limit => 50
      end
	
      Kind.create :name => "university"
      Kind.create :name => "school"
      Kind.create :name => "nursery"
   end

   def self.down
      drop_table :kinds
   end
end
