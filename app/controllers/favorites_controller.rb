class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: @book.id)
    # current_user.favorite.new(book_id: @book.id)
      #current_user で、カラムusre_id定義
      #book_id: @book.idはbook_idカラムに@book.idを定義
    favorite.save
    # redirect_back fallback_location:root_path　current_user.
  end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: @book.id)
    favorite.destroy
    # redirect_back fallback_location:root_path
  end

end
