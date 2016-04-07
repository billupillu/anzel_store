module Spree
  module Admin
    class SlidersController < ResourceController
      def index
        @sliders = Spree::Slider.page(params[:page] || 1).per(50)
      end
    end
  end
end
