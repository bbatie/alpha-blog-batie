class CategoriesController < ApplicationController 
def index 
end

def  new
 @category = Category.new
end

def create
  @category = Category.new(category_params)
  if @category.save
    flash[:notice] = "category was created"
    redirect_to @category
  else
    render 'new', status: :see_other
  end

end 


def show

end

private 

def category_params
  params.require(:category).permit(:name) 
end 

end
