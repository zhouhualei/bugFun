class FollowRelationshipsController < ApplicationController

  # GET /follow_relationships.json
  def index
    @follow_relationships = FollowRelationship.where("follower_id = ? and bug_id = ?", params[:user_id], params[:bug_id])
  end

  # POST /follow_relationships.json
  def create
    @follow_relationship = FollowRelationship.new({
      follower_id: params[:user_id],
      bug_id: params[:bug_id]
    })

    respond_to do |format|
      if FollowRelationship.where("follower_id = ? and bug_id = ?", @follow_relationship.follower_id, @follow_relationship.bug_id).count == 0
        if @follow_relationship.save
          format.json { render action: 'show', status: :created, location: @follow_relationship }
        else
          format.json { render json: @follow_relationship.errors, status: :unprocessable_entity }
        end
      else
        format.json { render json: "already followed", status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_relationships.json
  def destroy
    @follow_relationships = FollowRelationship.where("follower_id = ? and bug_id = ?", params[:user_id], params[:bug_id])
    respond_to do |format|
      if @follow_relationships.length > 0
        @follow_relationships.first.destroy
        format.json { head :no_content }
      else
        format.json { render json: "not found", status: :unprocessable_entity }      
      end
    end
  end

end
