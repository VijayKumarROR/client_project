class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :manager_name
      t.string :no_of_employees
      t.string :location
      t.string :no_of_branch

      t.timestamps
    end
  end
end
