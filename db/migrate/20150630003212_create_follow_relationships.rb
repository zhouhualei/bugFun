class CreateFollowRelationships < ActiveRecord::Migration
  def change
    create_table :follow_relationships do |t|
      t.integer :bug_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
