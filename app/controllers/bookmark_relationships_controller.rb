class BookmarkRelationshipsController < ApplicationController

  # GET /bookmark_relationships.json
  def index
    @bookmark_relationships = BookmarkRelationship.where("user_id = ? and bug_id = ?", params[:user_id], params[:bug_id])
  end

  # POST /bookmark_relationships.json
  def create
    @bookmark_relationship = BookmarkRelationship.new({
      user_id: params[:user_id],
      bug_id: params[:bug_id]
    })

    respond_to do |format|
      if BookmarkRelationship.where("user_id = ? and bug_id = ?", @bookmark_relationship.user_id, @bookmark_relationship.bug_id).count == 0
        if @bookmark_relationship.save
          format.json { render action: 'show', status: :created, location: @bookmark_relationship }
        else
          format.json { render json: @bookmark_relationship.errors, status: :unprocessable_entity }
        end
      else
        format.json { render json: "already bookmarked", status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmark_relationships.json
  def destroy
    @bookmark_relationships = BookmarkRelationship.where("user_id = ? and bug_id = ?", params[:user_id], params[:bug_id])
    respond_to do |format|
      if @bookmark_relationships.length > 0
        @bookmark_relationships.first.destroy
        format.json { head :no_content }
      else
        format.json { render json: "not found", status: :unprocessable_entity }      
      end
    end
  end

end
