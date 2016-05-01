class AddAuthenticityLetterToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :authenticity_letter, :boolean, null: false, default: true
  end
end
