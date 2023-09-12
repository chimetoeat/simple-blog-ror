class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_blog

    def create
        @comment = @blog.comments.create(comment_params)
        @comment.user = current_user

        if @comment.save
            flash[:notice] = "Comment has been created"
            redirect_to blog_path(@blog)
        else
            flash[:alert] = "Comment has not been created"
            redirect_to blog_path(@blog)
        end
    end

    def destroy
        @comment = @blog.comments.find(params[:id]) 
        @comment.destroy
        redirect_to blog_path(@blog)
    end

    private

    def set_blog
        @blog = Blog.find(params[:post_id])
    end

    def comment_params
        params.require(:comment).permit(:body)
    end
end
