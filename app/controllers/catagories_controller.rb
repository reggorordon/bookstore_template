class CatagoriesController < ApplicationController
  def new
      @page_title ="Add New Category"
      @catagory=Catagory.new
  end

  def create 
        
          @catagory=Catagory.new(catagory_params)
         if
            @catagory.save 
            flash[:notice]= "Post Succesful"
            redirect_to catagories_path
      else 
          render 'new'
      end
  end

  def update    
      @catagory=Catagory.find(params[:id])
      @catagory.update(catagory_params)
      flash[:notice]= "category updated"
            redirect_to catagories_path
      
  end

  def edit
        @catagory=Catagory.find(params[:id])
      
  end

  def destroy
            @catagory=Catagory.find(params[:id])
            @catagory.destroy
      flash[:notice]= "category destroyed"
            redirect_to catagories_path
  end

  def index
      @catagories=Catagory.all
  end

  def show
      @catagory=Catagory.find(params[:id])
      @catagories=Catagory.all
      @books=@catagory.books

  end
    
             private 
                def catagory_params
                    params.require(:catagory).permit(:name)
                end
end
