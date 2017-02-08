class PostsController < ApplicationController
  
  def new
      @post = Post.new
  end
  
  def create
      @post = Post.new(post_parms)
      @post.user_id = current_user.id
      respond_to do |f|
          if (@post.save)
              f.html { redirect_to "", notice: "Text creado!" }
        else 
              f.html { redirect_to "", notice: "Error: Text no enviado." }
              
         end
      end
 end
 
 private
 def post_parms
     params.require(:post).permit(:user_id, :content)
 end
 
end