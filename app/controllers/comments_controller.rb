class CommentsController < ApplicationController


  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.post}
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @comment.post}
    end
  end
  private
    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end

end