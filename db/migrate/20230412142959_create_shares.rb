class CreateShares < ActiveRecord::Migration[7.0]
  def change
    create_table :shares do |t|
      t.references :user, null: false, foreign_key: true
      t.references :poll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
