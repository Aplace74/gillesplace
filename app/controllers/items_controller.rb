class ItemsController < ApplicationController
  def create
    Item.create!(item_params)
    redirect_to cart_path(item_params[:cart_id])
  end

  def destroy
    @item = Item.find(params[:id])
    @cart = @item.cart
    @item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart) }
      format.js
    end
  end

  private

  def item_params
    params.permit(:quantity, :product_id, :cart_id, :photo_size_id, :frame_id)
  end
end
