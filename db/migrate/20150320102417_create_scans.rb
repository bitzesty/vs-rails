class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
      t.integer :uuid
      t.string  :filename
      t.string  :status

      t.timestamps
    end
  end
end
