class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def self.up
      
      create_table :payment_methods do |t|
         t.column :name, :string, :limit => 50
      end
	
      PaymentMethod.create :name => "Boleto"
      PaymentMethod.create :name => "Cartão"
   end

   def self.down
      drop_table :payment_methods
   end
end
