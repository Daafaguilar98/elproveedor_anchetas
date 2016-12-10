class RenameAnchetaToDescripcion < ActiveRecord::Migration
  def change
  	rename_column :ancheta, :ancheta, :descripcion
  end
end
