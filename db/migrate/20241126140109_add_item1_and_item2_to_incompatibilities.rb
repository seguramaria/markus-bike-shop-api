class AddItem1AndItem2ToIncompatibilities < ActiveRecord::Migration[8.0]
  def change
    add_column :incompatibilities, :item1_id, :integer
    add_column :incompatibilities, :item2_id, :integer
    add_column :incompatibilities, :item1_type, :string
    add_column :incompatibilities, :item2_type, :string
  end
end
