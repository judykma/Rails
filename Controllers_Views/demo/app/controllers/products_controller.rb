class ProductsController < ApplicationController
  def index
    @products = Product.all
    # if errors?  # this is not a built-in method. Assume that errors? returns true if something is wrong!
    #   flash[:error] = "You have errors"
    #   redirect_to '/users/' #pathing will be explained later
    # else
    #   flash[:success] = "You did it!"
    #   red
    # end
  end

  def create
    # @product = Product.create( name: params[:name], description: params[:description], price: params[:price])
    puts params
    product = Product.create(product_params)

    puts "Successfully added product."
    redirect_to '/products'
  end
  private
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
# Rendering By Default: unless your method specifically renders or redirects to another method, the method will attempt to load a view by the same name of the method


# RENDER!!!
# class UsersController < ApplicationController
#   def index
#     # renders the index.html.erb view in the views/users folder
#   end
  
#   def show
#     #renders the show.html.erb view in the views/users folder
#   end
  
#   def home
#     # renders the home.html.erb view in the views/users folder
#     render "home" 
#   end
  
#   def list_products
#      # renders the all.html.erb view in the views/products folder
#     render "products/all"
#   end
# end

# REDIRECT_TO!!!
# class UsersController < ApplicationController
#   def index
#     # renders the index.html.erb view in the users view folder
#   end
  
#   # this method checks if a users is signed in. If so it will redirect to the profile method by using the "<controler>/<method>" convention. If the if statement is not executed, then we will just render the new.html.erb view in the users view folder
#   def new
#     if signed_in?
#       redirect_to "/users/profile"
#     end
#   end
  
#   def profile
#   end
# end