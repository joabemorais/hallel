class BibleReferencesController < ApplicationController
  before_action :set_bible_reference, only: %i[ show edit update destroy ]

  # GET /bible_references or /bible_references.json
  def index
    @bible_references = BibleReference.all
  end

  # GET /bible_references/1 or /bible_references/1.json
  def show
  end

  # GET /bible_references/new
  def new
    @bible_reference = BibleReference.new
  end

  # GET /bible_references/1/edit
  def edit
  end

  # POST /bible_references or /bible_references.json
  def create
    @bible_reference = BibleReference.new(bible_reference_params)

    respond_to do |format|
      if @bible_reference.save
        format.html { redirect_to @bible_reference, notice: "Bible reference was successfully created." }
        format.json { render :show, status: :created, location: @bible_reference }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bible_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bible_references/1 or /bible_references/1.json
  def update
    respond_to do |format|
      if @bible_reference.update(bible_reference_params)
        format.html { redirect_to @bible_reference, notice: "Bible reference was successfully updated." }
        format.json { render :show, status: :ok, location: @bible_reference }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bible_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bible_references/1 or /bible_references/1.json
  def destroy
    @bible_reference.destroy!

    respond_to do |format|
      format.html { redirect_to bible_references_path, status: :see_other, notice: "Bible reference was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bible_reference
      @bible_reference = BibleReference.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bible_reference_params
      params.expect(bible_reference: [ :start_book_name, :start_chapter, :start_verse, :end_book_name, :end_chapter, :end_verse ])
    end
end
