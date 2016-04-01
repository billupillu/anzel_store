module Spree
  module Admin
    class FirstSlidesController < ResourceController
      def index
        @first_slides = Spree::FirstSlide.page(params[:page] || 1).per(50)
      end
    end
  end
end
