module Spree
  module Admin
    class CandiesController < ResourceController
      def index
        @candies = Spree::Candy.page(params[:page] || 1).per(50)
      end
    end
  end
end
