class Users < ApplicationController
    def index
        @users = User.all
    end
end