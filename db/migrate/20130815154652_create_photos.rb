class CreatePhotos < ActiveRecord::Migration
  def change
    create_table  :photos do |t|
      t.string    :name
      t.string    :description
      t.string    :file
      t.references :albums
    end
  end
end
