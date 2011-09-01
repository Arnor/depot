class AddImageUrlUid < ActiveRecord::Migration
  def self.up
    add_column :products, :image_url_uid, :string
  end

  def self.down
    remove_column :products, :image_url_uid
  end
end
