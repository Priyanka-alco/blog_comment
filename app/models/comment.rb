class Comment < ApplicationRecord
  belongs_to :blogs,:class_name => "Blog", :foreign_key => "blog_id"
end
