class CreateNails < ActiveRecord::Migration[7.0]
  def change
    create_table :nails do |t|
      t.integer :code
      t.string :color
      t.integer :amount

      t.timestamps
    end
  end
end
