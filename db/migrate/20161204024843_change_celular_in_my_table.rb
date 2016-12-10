class ChangeCelularInMyTable < ActiveRecord::Migration
  def up
    change_column :ancheta, :celular, :bigint
  end

  def down
    change_column :ancheta, :celular, :integer
  end
end
