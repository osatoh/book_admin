class BooksController < ApplicationController
  protect_from_forgery except: %i[destroy]
  before_action :set_book, only: %i[show destroy]
  around_action :action_logger, only: %i[destroy]


  def show
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def action_logger
    logger.info "around-before"
    yield
    logger.info "around-after"
  end
end
