class PostController < ApplicationController
    def index
      @posts = Post.all
    end
  
    def show
      @post = Post.find_by(id: params[:id])
    end
  
    def new
      @post = Post.new
    end
  
    def create
        # puts "Here are the params sent : ----------#{}"
      @post = Post.new({title: params[:post][:title], body: params[:post][:body]})
      if @post.save
        redirect_to "/posts"
      else
        render :new, status: :unprocessable_entity
      end

    end
  
    def edit
      @post = Post.find(params[:id])
    end
  
    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to @post
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @post = Post.where(id: params[:id]).first
      if @post.destroy
        redirect_to post_path
      else
        
      end
    end
  
    private
      def post_params
        params.require(:post).permit(:title, :body)
      end
  end
  