
class MoodlesController < ApplicationController
  # GET /moodles
  # GET /moodles.json
  def index
    @moodles = Moodle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @moodles }
    end
  end

  # GET /moodles/1
  # GET /moodles/1.json
  def show
    @moodle = Moodle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @moodle }
    end
  end

  # GET /moodles/new
  # GET /moodles/new.json
  def new
    @moodle = Moodle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @moodle }
    end
  end

  # GET /moodles/1/edit
  def edit
    @moodle = Moodle.find(params[:id])
  end

  # POST /moodles
  # POST /moodles.json
  def create
    @moodle = Moodle.new(params[:moodle])

    respond_to do |format|
      if @moodle.save
        format.html { redirect_to @moodle, notice: 'Moodle was successfully created.' }
        format.json { render json: @moodle, status: :created, location: @moodle }
      else
        format.html { render action: "new" }
        format.json { render json: @moodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /moodles/1
  # PUT /moodles/1.json
  def update
    @moodle = Moodle.find(params[:id])

    respond_to do |format|
      if @moodle.update_attributes(params[:moodle])
        format.html { redirect_to @moodle, notice: 'Moodle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @moodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moodles/1
  # DELETE /moodles/1.json
  def destroy
    @moodle = Moodle.find(params[:id])
    @moodle.destroy

    respond_to do |format|
      format.html { redirect_to moodles_url }
      format.json { head :no_content }
    end
  end
end
