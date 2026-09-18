class MacropostsController < ApplicationController
  before_action :set_macropost, only: %i[ show edit update destroy ]

  # GET /macroposts or /macroposts.json
  def index
    @macroposts = Macropost.all
  end

  # GET /macroposts/1 or /macroposts/1.json
  def show
  end

  # GET /macroposts/new
  def new
    @macropost = Macropost.new
  end

  # GET /macroposts/1/edit
  def edit
  end

  # POST /macroposts or /macroposts.json
  def create
    @macropost = Macropost.new(macropost_params)

    respond_to do |format|
      if @macropost.save
        format.html { redirect_to @macropost, notice: "Macropost was successfully created." }
        format.json { render :show, status: :created, location: @macropost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @macropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /macroposts/1 or /macroposts/1.json
  def update
    respond_to do |format|
      if @macropost.update(macropost_params)
        format.html { redirect_to @macropost, notice: "Macropost was successfully updated." }
        format.json { render :show, status: :ok, location: @macropost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @macropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /macroposts/1 or /macroposts/1.json
  def destroy
    @macropost.destroy!

    respond_to do |format|
      format.html { redirect_to macroposts_path, status: :see_other, notice: "Macropost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_macropost
      @macropost = Macropost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def macropost_params
      params.expect(macropost: [ :content, :profile_id ])
    end
end
