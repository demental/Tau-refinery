Refinery::PagesController.class_eval do

  before_filter :find_latest_blog_posts, :only => [:home]

  protected

    def find_latest_blog_posts
      @blog_posts = Refinery::Blog::Post.recent(5)
    end
end