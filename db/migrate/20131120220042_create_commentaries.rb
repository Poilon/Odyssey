class CreateCommentaries < ActiveRecord::Migration
  def change
    create_table :commentaries do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
