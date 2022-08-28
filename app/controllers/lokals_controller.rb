# frozen_string_literal: true

class LokalsController < ApplicationController
  before_action :set_lokal, only: %i[show edit update destroy book]
  before_action :not_admin, except: %i[index show book]

  # GET /lokals or /lokals.json
  def index
    @lokals = if params[:key].nil?
                Lokal.all.where(user_id: nil)
              else
                Lokal.all.where(user_id: nil).sort_by(&:cena)
              end
  end

  # GET /lokals/1 or /lokals/1.json
  def show; end

  # GET /lokals/new
  def new
    @lokal = Lokal.new
  end

  # GET /lokals/1/edit
  def edit; end

  # POST /lokals or /lokals.json
  def create
    @lokal = Lokal.new(lokal_params)

    respond_to do |format|
      if @lokal.save
        format.html { redirect_to lokal_url(@lokal), notice: 'Lokal was successfully created.' }
        format.json { render :show, status: :created, location: @lokal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lokal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lokals/1 or /lokals/1.json
  def update
    respond_to do |format|
      if @lokal.update(lokal_params)
        format.html { redirect_to lokal_url(@lokal), notice: 'Lokal was successfully updated.' }
        format.json { render :show, status: :ok, location: @lokal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lokal.errors, status: :unprocessable_entity }
      end
    end
  end

  def book
    respond_to do |format|
      if @lokal.update(user_id: current_user.id)
        format.html { redirect_to lokals_url, notice: 'Lokal was successfully booked.' }
        format.json { render :show, status: :ok, location: @lokal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lokal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lokals/1 or /lokals/1.json
  def destroy
    @lokal.destroy

    respond_to do |format|
      format.html { redirect_to lokals_url, notice: 'Lokal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lokal
    @lokal = Lokal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def lokal_params
    params.require(:lokal).permit(:ulica, :cena, :rezerv, :end_time)
  end
end
