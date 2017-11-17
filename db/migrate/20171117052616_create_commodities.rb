class CreateCommodities < ActiveRecord::Migration[5.1]
  def change
    create_table :commodities do |t|
      t.string :code
      t.string :name
      t.string :close_date

      t.timestamps
    end
  end
end
