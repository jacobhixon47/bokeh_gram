class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :content, :string
      t.column :user_id, :integer
      t.column :image_id, :integer

      t.timestamps
    end
  end
end
