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
        @comment = Comment.create(comment_params)
        render json: @comment, only: [:id, :title, :detail, :star_rating], include: [:user, :location]
    end 

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: @comment, only: [:id, :title, :detail, :star_rating], include: [:user, :location]
    end 

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end 
    
    private

    def comment_params
        params.require(:comment).permit(:title, :detail, :star_rating, :user_id, :location_id)
    end

end


