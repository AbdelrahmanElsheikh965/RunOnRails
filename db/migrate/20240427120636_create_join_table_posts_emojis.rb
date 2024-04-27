class CreateJoinTablePostsEmojis < ActiveRecord::Migration[7.1]
  def change
    create_join_table :Posts, :Emojis do |t|
      # t.index [:post_id, :emoji_id]
      # t.index [:emoji_id, :post_id]
    end
  end
end
