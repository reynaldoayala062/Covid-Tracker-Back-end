class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments, only: [:id, :title, :detail, :star_rating], include: [:user, :location]
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment, only: [:id, :title, :detail, :star_rating], include: [:user, :location]
    end

    def create
        if current_user
            @comment = Comment.create(comment_params)
            render json: @comment, only: [:id, :title, :detail, :star_rating], include: [:user, :location]
        else
            render json: => { msg: => 'Need to login before doing that' }
        end
    end 

    def update
        if current_user
            @comment = Comment.find(params[:id])
            @comment.update(comment_params)
            render json: @comment, only: [:id, :title, :detail, :star_rating], include: [:user, :location]
        else
            render json: => { msg: => 'Need to login before doing that' }
        end
    end 

    def destroy
        if current_user
            @comment = Comment.find(params[:id])
            @comment.destroy
        else
            render json: { msg: => 'Are you sure this is your comment?'}
        end
    end 
    
    private

    def comment_params
        params.require(:comment).permit(:title, :detail, :star_rating, :user_id, :location_id)
    end

end


