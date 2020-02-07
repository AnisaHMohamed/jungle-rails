class Admin::DashboardController < ApplicationController
  include HttpAuthConcern

  def show
    @products_count = Product.count
    @products_quantity =Product.sum(:quantity)
    @categories = Category.count
  end
end
