class CreateAlbums < ActiveRecord::Migration
  def change
    create_table    :albums do |t|
      t.string      :title
      t.references  :users
    end
  end
end
