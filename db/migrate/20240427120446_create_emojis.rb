class CreateEmojis < ActiveRecord::Migration[7.1]
  def change
    create_table :emojis do |t|
      t.text :shape

      t.timestamps
    end
  end
end
