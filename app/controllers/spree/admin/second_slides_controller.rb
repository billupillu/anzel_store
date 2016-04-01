module Spree
  module Admin
    class SecondSlidesController < ResourceController
      def index
        @second_slides = Spree::SecondSlide.page(params[:page] || 1).per(50)
      end
    end
  end
end
