class CreateComments < ActiveRecord::Migration
  create_table(:comments) do |t|
      t.string :content

      t.timestamps
      t.belongs_to :user
      t.belongs_to :post
    end
end
