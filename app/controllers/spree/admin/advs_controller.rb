module Spree
  module Admin
    class AdvsController < ResourceController
      def index
        @advs = Spree::Adv.page(params[:page] || 1).per(50)
      end
    end
  end
end
