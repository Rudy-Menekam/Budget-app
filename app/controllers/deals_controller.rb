class DealsController < ApplicationController
  before_action :set_deal, only: %i[show edit update destroy]

  # GET /deals or /deals.json
  def index
    @deals = Deal.all
  end

  # GET /deals/new
  def new
    @group = Group.find(params[:group_id])
    @deal = Deal.new
  end

  # POST /deals or /deals.json
  def create
    @deal = Deal.new(deal_params)
    @group = Group.find(params[:group_id])
    if @deal.save
      DealGroup.create(group_id: @group.id, deal_id: @deal.id)
      flash[:notice] = 'Deal was successfully created.'
      redirect_to deal_group_path(@group)
    else
      flash[:alert] = 'Deal could not be created.'
      render :new
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deal
    @deal = Deal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def deal_params
    params.require(:deal).permit(:name, :amount).merge(author: current_user)
  end
end
