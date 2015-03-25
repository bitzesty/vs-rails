class Scan < ActiveRecord::Base
  validates_presence_of :id, :filename
end
