class Cart < ApplicationRecord
  has_one :user
  has_many :items
  has_one :order

  def self.current(current_user, session)
    if current_user.nil?
      session_cart(session)
    elsif current_user.cart.nil?
      user_cart(current_user, session)
    else
      current_user.cart
    end
  end

  def total
    total = 0
    items.each do |item|
      total += item.product.price * item.quantity
    end
    total
  end

  private

  def self.session_cart(session)
    if session[:cart].nil?
      new_cart = Cart.create
      session[:cart] = new_cart.id
      new_cart
    else
      Cart.find(session[:cart])
    end
  end

  def self.user_cart(current_user, session)
    if session[:cart].nil?
      new_cart = Cart.create
      current_user.cart = new_cart
      new_cart
    else
      cart = Cart.find(session[:cart])
      current_user.cart = cart
    end
  end
end
