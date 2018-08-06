class CartController < ApplicationController
  before_filter :authenticate_user!
  def add
  # get id of the photo
     id = params[:id]
  #if cart already present use the existing cart, else create new cart
    if session[:cart]then
        cart = session[:cart]
    else
      session[:cart]={}
     cart = session[:cart]
  end
  # if photo has already been added to the cart, increment the value
  # else set value to 1
     if cart[id]then
        cart[id] = cart[id] + 1
    else
        cart[id] = 1
    end
  #redirect to cart display page
  redirect_to :action => :index
  end
  
  def clearCart
  # set the session variable to nil and redirect
    session[:cart] = nil
    redirect_to :action => :index
  end
  
  def index
  # if there is a cart pass it to the page for display else pass empty value
      if session[:cart] then
        @cart = session[:cart]
      else 
     @cart = {}
    end
    end
end    
