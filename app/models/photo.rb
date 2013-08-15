class Photo < ActiveRecord::Base
  belongs_to :albums


  validates :name, presence: true

end
