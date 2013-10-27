class Admin::ProductsController < Admin::AdminsController
	def new
		@category = Category.find(params[:category_id])
		@product = @category.products.new
	end
		
	def create
    	@category = Category.find(params[:category_id])
   		@product = @category.products.create(params[:product].permit(:item, :description, :price))
    	redirect_to admin_category_path(@category)
  	end

  	def show
  		@category = Category.find(params[:category_id])
  		@product = @category.products.find(params[:id])
	end

  	def edit
  		@category = Category.find(params[:category_id])
  		@product = @category.products.find(params[:id])
	end

  def index
      @category = Category.find(params[:category_id])
      @products = @category.products
  end

	def update
  		@category = Category.find(params[:category_id])
  		@product = @category.products.find(params[:id])
 
  		@product = @category.products.update(params[:product].permit(:item, :description, :price))
    	redirect_to admin_category_path(@category)
	end


  	def destroy
    	@category = Category.find(params[:category_id])
    	@product = @category.products.find(params[:id])
    	@product.destroy
    	redirect_to admin_category_path(@category)
  	end
end
