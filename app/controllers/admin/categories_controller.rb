class Admin::CategoriesController < ApplicationController
 #   http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']

  def index
    @categories = Category.order(id: :desc).all

  end
     def new
     @categories = Category.new
   end

   def create
    @categories = Catagory.new(catagories_params)
   end

   private

   def categories_params
     params.require(:categories).permit(
       :name
    )
  end
end






#     if @product.save
#       redirect_to [:admin, :products], notice: 'Product created!'
#     else
#       render :new
#     end
#   end

#   def destroy
#     @product = Product.find params[:id]
#     @product.destroy
#     redirect_to [:admin, :products], notice: 'Product deleted!'
#   end


# end