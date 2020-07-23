class RenameTypeToKind < ActiveRecord::Migration[5.2]
  def change
    rename_column :pedals, :type, :kind
  end
end
