module Spree
  module Admin
    class ThirdSlidesController < ResourceController
      def index
        @third_slides = Spree::ThirdSlide.page(params[:page] || 1).per(50)
      end
    end
  end
end
