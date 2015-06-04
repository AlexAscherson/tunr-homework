class Artist < ActiveRecord::Base
  has_many :albums, dependent: :destroy
  # the dependant destroy means if we delete a customer then the orders
  # linked ot them get deleted as well.
  has_many :songs, dependent: :destroy
  belongs_to :genre

end
