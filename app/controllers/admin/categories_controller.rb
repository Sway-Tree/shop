class Admin::CategoriesController < Admin::AdminsController

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params[:category].permit(:name))

		if @category.save
			redirect_to admin_category_path(@category)
		else
			render 'new'
		end
	end

	def show
  		@category = Category.find(params[:id])
	end

	def edit
  		@category = Category.find(params[:id])
	end

	def update
  		@category = Category.find(params[:id])
 
  		if @category.update(params[:category].permit(:name))
    		redirect_to admin_category_path(@category)
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@category = Category.find(params[:id])
  		@category.destroy
 
  		redirect_to admin_categories_path
	end

	def index
		@categories = Category.all
	end

end
