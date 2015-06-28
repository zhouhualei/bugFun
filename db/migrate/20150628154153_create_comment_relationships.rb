class CreateCommentRelationships < ActiveRecord::Migration
  def change
    create_table :comment_relationships do |t|
      t.integer :bug_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
