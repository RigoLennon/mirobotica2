class Category < ApplicationRecord
  validates :title, presence: true

  has_many :has_categories
  has_many :articles, through: :has_categories

  has_attached_file :image, styles:{ :thumb => "281x139#", :medium =>"80x80#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


end
