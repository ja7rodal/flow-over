class CreateVoqtes < ActiveRecord::Migration[5.0]
  def change
    create_table :voqtes do |t|
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
