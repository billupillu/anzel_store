module Spree
  module Admin
    class MenuBannersController < ResourceController
      def index
        @menu_banners = Spree::MenuBanner.page(params[:page] || 1).per(50)
      end
    end
  end
end
