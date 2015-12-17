class CommentsController < ApplicationController
  def create
    if params[:topic_id].present?
      @topic = Topic.find(params[:topic_id])
      @comment = @topic.comments.build(comment_params)

      if @comment.save
        redirect_to @topic,
        notice: 'comment was created'
      else
        redirect_to @topic,
        alert: 'Error creating comment'
        @comment.errors.full_messages.to_sentence
      end
    else
      @group = Group.find(params[:group_id])
      @comment = @group.comments.build(comment_params)

      if @comment.save
        redirect_to @group,
        notice: 'comment was created'
      else
        redirect_to @group,
        alert: 'Error creating comment'
        @comment.errors.full_messages.to_sentence
      end
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])

    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @topic, notice: 'Comment was destroyed.' }
      format.json { head :no_content }
    end
  end

private


  def comment_params
    params.require(:comment).permit(:user_id, :text)
  end
end
