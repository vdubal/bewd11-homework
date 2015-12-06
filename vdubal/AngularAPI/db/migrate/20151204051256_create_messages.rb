class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email_to
      t.string :message_subject
      t.string :message_text
      t.string :username

      t.timestamps null: false
    end
  end
end
