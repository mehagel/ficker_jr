class Photo < ActiveRecord::Base
  belongs_to :albums

  validates :name, presence: true

  mount_uploader :file, Uploader 


end
