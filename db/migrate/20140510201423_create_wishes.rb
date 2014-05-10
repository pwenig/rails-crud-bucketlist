class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :wish
      t.string :description
    end
  end


  down do
    drop_table(:wishes)
  end
end
