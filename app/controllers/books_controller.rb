class BooksController < ApplicationController
  def new
      @page_title='add book'
      @book =Book.new 
      @catagory =Catagory.new 
      @author =Author.new 
      @publisher =Publisher.new 
      
  
  end

  def create
      @book=Book.new(book_params)
      @book.save 
    flash[:notice]= "book added"
      redirect_to books_path
      
     
  end

  def update
            @book=Book.find(params[:id])
            @book.update (book_params)
            flash[:notice]= "book updated"
            redirect_to books_path
  end

  def edit
      @book=Book.find(params[:id])
  end

  def destroy
             @book=Book.find(params[:id])
            @book.destroy
            flash[:notice]= "book destroyed"
            redirect_to books_path
  end

  def index
      @books=Book.all
      @catagories=Catagory.all
  end

  def show
      @book=Book.find(params[:id])
      @catagories=Catagory.all
  end
    
    private 
    def book_params
    params.require(:book).permit(:title, :catagory_id, :author_id,:publisher_id, :isbn, :price, :year, :buy, :excerpt,:format, :pages,:coverpath, :buypath)
    end
end
    
