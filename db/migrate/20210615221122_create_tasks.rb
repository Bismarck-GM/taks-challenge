class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :completed, default: false
      t.references :template, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
