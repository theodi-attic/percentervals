class PercentervalsController < ApplicationController
  # GET /percentervals
  # GET /percentervals.json
  def index
    @percentervals = Percenterval.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @percentervals }
    end
  end

  # GET /percentervals/1
  # GET /percentervals/1.json
  def show
    @percenterval = Percenterval.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @percenterval }
    end
  end

  # GET /percentervals/new
  # GET /percentervals/new.json
  def new
    @percenterval = Percenterval.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @percenterval }
    end
  end

  # GET /percentervals/1/edit
  def edit
    @percenterval = Percenterval.find(params[:id])
  end

  # POST /percentervals
  # POST /percentervals.json
  def create
    @percenterval = Percenterval.new(params[:percenterval])

    respond_to do |format|
      if @percenterval.save
        format.html { redirect_to @percenterval, notice: 'Percenterval was successfully created.' }
        format.json { render json: @percenterval, status: :created, location: @percenterval }
      else
        format.html { render action: "new" }
        format.json { render json: @percenterval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /percentervals/1
  # PUT /percentervals/1.json
  def update
    @percenterval = Percenterval.find(params[:id])

    respond_to do |format|
      if @percenterval.update_attributes(params[:percenterval])
        format.html { redirect_to @percenterval, notice: 'Percenterval was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @percenterval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /percentervals/1
  # DELETE /percentervals/1.json
  def destroy
    @percenterval = Percenterval.find(params[:id])
    @percenterval.destroy

    respond_to do |format|
      format.html { redirect_to percentervals_url }
      format.json { head :no_content }
    end
  end
end
