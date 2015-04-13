class Scan < ActiveRecord::Base
  validates :uuid, :filename, presence: true
  validates :uuid, uniqueness: true

  def clean?
    self.status == "clean"
  end
end
