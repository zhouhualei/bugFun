class RatingRelationshipsController < ApplicationController

  # GET /rating_relationships.json
  def index
    @rating_relationships = RatingRelationship.where("user_id = ? and bug_id = ?", params[:user_id], params[:bug_id])
  end

  # POST /rating_relationships.json
  def create
    @rating_relationship = RatingRelationship.new({
      user_id: params[:user_id],
      bug_id: params[:bug_id],
      score: params[:score] || 1
    })

    respond_to do |format|
      if RatingRelationship.where("user_id = ? and bug_id = ?", @rating_relationship.user_id, @rating_relationship.bug_id).count == 0
        if @rating_relationship.save
          format.json { render action: 'show', status: :created, location: @rating_relationship }
        else
          format.json { render json: @rating_relationship.errors, status: :unprocessable_entity }
        end
      else
        format.json { render json: "already rated", status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rating_relationships.json
  def destroy
    @rating_relationships = RatingRelationship.where("user_id = ? and bug_id = ?", params[:user_id], params[:bug_id])
    respond_to do |format|
      if @rating_relationships.length > 0
        @rating_relationships.first.destroy
        format.json { head :no_content }
      else
        format.json { render json: "not found", status: :unprocessable_entity }
      end
    end
  end

end
