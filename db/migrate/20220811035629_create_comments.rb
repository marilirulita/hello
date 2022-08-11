class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.belongs_to :author, foreign_key: { to_table: :users}
      t.belongs_to :text, foreign_key: true

      t.timestamps
    end
  end
end
