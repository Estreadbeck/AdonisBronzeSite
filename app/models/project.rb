class Project < ApplicationRecord
  validates_presence_of :title, :body
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images,
                                allow_destroy: true, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  
end
