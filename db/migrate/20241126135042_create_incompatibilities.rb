class CreateIncompatibilities < ActiveRecord::Migration[8.0]
  def change
    create_table :incompatibilities do |t|
      t.timestamps
    end
  end
end
