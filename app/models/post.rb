class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author
  validates :body, :title, presence:true
end
