# frozen_string_literal: true

class Post < ActiveRecord::Base
  validates :title,
            presence: true,
            length: { minimum: 3, maximum: 20 },
            uniqueness: true

  validates :content,
            presence: true,
            length: { minimum: 3, maximum: 20 }
  
end
