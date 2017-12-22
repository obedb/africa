class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :content
      t.string :file

      t.timestamps
    end
  end
end
