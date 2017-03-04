class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :project_name
      t.text :description
      t.string :time
      t.string :set_rate
      t.string :team_member
      t.boolean :status

      t.timestamps
    end
  end
end
