class CreateBookmarkRelationships < ActiveRecord::Migration
  def change
    create_table :bookmark_relationships do |t|
      t.integer :bug_id
      t.integer :user_id

      t.timestamps
    end
  end
end
