class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :address
      t.string :district
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
