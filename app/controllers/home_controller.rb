class HomeController < ApplicationController
      def index
        StartScrap.new.save
        @cryptos = Crypto.all
        @crypto = Crypto.new
      end
    def show 
      @crypto = Crypto.find_by(name: params[:home][:name])
    end
end
