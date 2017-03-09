class RemoveImageFromCompany < ActiveRecord::Migration[5.0]
  def change
    remove_column :companies, :image, :string
  end
end
