class ProductinfoController < ApplicationController

     def home
     	@products=Product.all
     	@order_item = current_order.order_items.new
      end

	def new
		@p=Product.new
	end
	def create
		@p=Product.new(product_params)
		if @p.save
			redirect_to({:action=>'home'})
		else
			render('new')
		end


	end
    private
    def product_params
    	params.require(:product).permit(:name,:price,:desc,:active,:image)
    end
		
	
end
