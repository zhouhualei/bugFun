class CommentsController < ApplicationController

  # GET /comments/1.json
  def show
  end

  # POST /comments.json
  def create
    p params
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.json { render action: 'show', status: :created, location: @comment }
      else
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:id, :author_id, :bug_id, :content)
    end

end
