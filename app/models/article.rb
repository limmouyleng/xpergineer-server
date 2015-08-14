class Article < ActiveRecord::Base
	validates :title, presence: true,
                    length: { minimum: 5 }

  validates :text, presence: true,
                    length: { minimum: 5 }

	self.inheritance_column = nil
end