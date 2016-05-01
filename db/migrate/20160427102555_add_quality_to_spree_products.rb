class AddQualityToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :quality, :string, limit: 60, null: false, default: "100% Orignal, handpainted by the Artist"
  end
end
