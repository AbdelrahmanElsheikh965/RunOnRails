class PostController < ApplicationController

    def index
        
    end

    def new
        # @post = post.new
    end
    
    def create
    @post = post.new(title: "...", body: "...")

    if @post.save
        redirect_to @post
    else
        render :new, status: :unprocessable_entity
    end
    end

    def edit
        
    end

    def update
        
    end

    def delete

    end
    
end
