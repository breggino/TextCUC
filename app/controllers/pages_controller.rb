# El controlador de las paginas contiene todo el codigo de las paginas en el directorio /Pages
class PagesController < ApplicationController
  
  # Codigo para pages/index
  def index
  end

 # Codigo para pages/home
  def home
  end

 # Codigo para pages/profile
  def profile
   # Username en la barra de direcciones /user/username
   @username = params[:id]
  else
   redirect_to root_path, :notice=> "Usuario no encontrado!"
  end
  end

 # Codigo para pages/explore
  def explore
  end
  

end
