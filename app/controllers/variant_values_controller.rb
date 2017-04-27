class VariantValuesController < ApplicationController
  before_action :set_variant_value, only: [:show, :update, :destroy]

  # GET /variant_values
  def index
    @variant_values = VariantValue.all

    render json: @variant_values
  end

  # GET /variant_values/1
  def show
    render json: @variant_value
  end

  # POST /variant_values
  def create
    @variant_value = VariantValue.new(variant_value_params)

    if @variant_value.save
      render json: @variant_value, status: :created, location: @variant_value
    else
      render json: @variant_value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /variant_values/1
  def update
    if @variant_value.update(variant_value_params)
      render json: @variant_value
    else
      render json: @variant_value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /variant_values/1
  def destroy
    @variant_value.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variant_value
      @variant_value = VariantValue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def variant_value_params
      params.permit(:value, :Variant_id)
    end
end
