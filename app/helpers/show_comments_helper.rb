module ShowCommentsHelper
  def check_comment(blog_id)
    get_comment = Comment.where("blog_id=#{blog_id}")

  end
end
