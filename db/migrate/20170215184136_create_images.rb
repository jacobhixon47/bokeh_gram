class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|

      t.column :caption, :string
      t.column :owner_id, :integer
      t.attachment :picture

      t.timestamps
    end
  end
end
