class Scan < ActiveRecord::Base
  validates_presence_of :uuid, :filename
end
