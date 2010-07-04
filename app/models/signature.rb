class Signature < ActiveRecord::Base
  belongs_to :account
  has_many :strokes
  validates_presence_of :title

end
