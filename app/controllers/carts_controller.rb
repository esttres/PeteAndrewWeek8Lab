class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update]


  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @cart.update(post_params)
        format.html { redirect_to :edit, notice: 'You updated your cart!' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
end
