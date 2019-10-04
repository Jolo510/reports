class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :description
      t.string :created_by

      t.timestamps
    end
  end
end
