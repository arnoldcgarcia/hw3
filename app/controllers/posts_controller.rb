class PostsController < ApplicationController

    def new
        @post = Post.new
    end 

    def create
        Post.create(title:params["post"]["title"],
            description:params["post"]["description"],
            posted_on:params["post"]["posted_on"],
            place_id:params["post"]["place_id"])
            
            redirect_to "/places/#{params["post"]["place_id"]}"
        end


end
