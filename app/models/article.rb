class Article < ActiveRecord::Base
	validates :title, presence: true,
                    length: { minimum: 5 }

  validates :description, presence: true,
                    length: { minimum: 5 }


  has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/articles/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/articles/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

	self.inheritance_column = nil
end
