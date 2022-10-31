class CreateAccountVerificationDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :account_verification_documents do |t|
      t.string :title
      t.text :image_data

      t.timestamps
    end
  end
end
