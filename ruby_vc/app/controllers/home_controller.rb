class HomeController < ApplicationController
    def index

    end

    def attack
        @from = params[:userA]
        @to = params[:userB]
    end

    def defense
        @from = params[:userA]
        @to = params[:userB]
    end
end
