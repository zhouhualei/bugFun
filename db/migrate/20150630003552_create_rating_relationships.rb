class CreateRatingRelationships < ActiveRecord::Migration
  def change
    create_table :rating_relationships do |t|
      t.integer :bug_id
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
