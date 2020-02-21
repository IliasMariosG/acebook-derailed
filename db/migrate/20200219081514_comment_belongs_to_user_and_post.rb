class CommentBelongsToUserAndPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :users, foreign_key: true, null: false
    add_reference :comments, :posts, foreign_key: true, null: false
  end
end
