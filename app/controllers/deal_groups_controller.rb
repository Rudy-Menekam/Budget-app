class DealGroupsController < ApplicationController
  before_action :set_deal_group, only: %i[show edit update destroy]

  # GET /deal_groups or /deal_groups.json
  def index
    @deal_groups = DealGroup.all
  end

  # GET /deal_groups/1 or /deal_groups/1.json
  def show; end

  # GET /deal_groups/new
  def new
    @deal_group = DealGroup.new
  end

  # GET /deal_groups/1/edit
  def edit; end

  # def new_deal_group
  #   @deal_group = DealGroup.new
  #   # Set the title of the page
  #   @title = "New Deal Group"
  #   respond_to do |format|
  #     format.html do
  #       # Render the new deal form
  #       render :new
  #     end
  #   end
  # end

  # POST /deal_groups or /deal_groups.json
  def create
    @deal_group = DealGroup.new(deal_group_params)

    respond_to do |format|
      if @deal_group.save
        format.html { redirect_to deal_group_url(@deal_group), notice: 'Deal group was successfully created.' }
        format.json { render :show, status: :created, location: @deal_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deal_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deal_groups/1 or /deal_groups/1.json
  def update
    respond_to do |format|
      if @deal_group.update(deal_group_params)
        format.html { redirect_to deal_group_url(@deal_group), notice: 'Deal group was successfully updated.' }
        format.json { render :show, status: :ok, location: @deal_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deal_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deal_groups/1 or /deal_groups/1.json
  def destroy
    @deal_group.destroy

    respond_to do |format|
      format.html { redirect_to deal_groups_url, notice: 'Deal group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deal_group
    @deal_group = DealGroup.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def deal_group_params
    params.require(:deal_group).permit(:deal_id, :group_id)
  end
end
