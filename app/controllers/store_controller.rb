class StoreController < ApplicationController
  def index
    @products = Product.all
  end
  def search


    @squery = params[:searcher]

    @prodSearch = Product.find_all_by_title(@squery)
  end
end
