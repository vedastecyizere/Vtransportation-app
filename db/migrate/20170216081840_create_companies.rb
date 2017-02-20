class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :email
      t.string :phone_number
      t.string :image

      t.timestamps
    end
  end
end
