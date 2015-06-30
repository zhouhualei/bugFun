class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.string :severity
      t.string :submiter
      t.integer :assignee_id
      t.string :status
      t.integer :views
      t.string :track
      t.string :project
      t.string :release

      t.timestamps
    end
  end
end
