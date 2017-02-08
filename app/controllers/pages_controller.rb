# El controlador de las paginas contiene todo el codigo de las paginas en el directorio /Pages
class PagesController < ApplicationController
  
  # Codigo para pages/index
  def index
  end

 # Codigo para pages/home
  def home
    @posts = Post.all
  end

 # Codigo para pages/profile
  def profile
   # Username en la barra de direcciones /user/username
   
   if (User.find_by_username(params[:id]))
   @username = params[:id]
   
  else
   
   redirect_to root_path, :notice=> "Usuario no encontrado!"
   
  end
  
  @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
  @newPost = Post.new
  
 end
 

 # Codigo para pages/explore
  def explore
    @posts = Post.all
  end
  

end
