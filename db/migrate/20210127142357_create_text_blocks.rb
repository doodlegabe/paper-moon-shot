class CreateTextBlocks < ActiveRecord::Migration[6.0]

  def self.up
    create_table :text_blocks do |t|
      t.string :title
      t.string :body
      t.timestamps
    end
    add_reference :text_blocks, :user
  end

  def self.down
    remove_reference :text_blocks, :user
    drop_table :text_blocks
  end

end
