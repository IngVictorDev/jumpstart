class AccountVerificationDocumentsController < ApplicationController
  before_action :set_account_verification_document, only: %i[ show edit update destroy ]

  # GET /account_verification_documents or /account_verification_documents.json
  def index
    @account_verification_documents = AccountVerificationDocument.all
  end

  # GET /account_verification_documents/1 or /account_verification_documents/1.json
  def show
  end

  # GET /account_verification_documents/new
  def new
    @account_verification_document = AccountVerificationDocument.new
  end

  # GET /account_verification_documents/1/edit
  def edit
  end

  # POST /account_verification_documents or /account_verification_documents.json
  def create
    @account_verification_document = AccountVerificationDocument.new(account_verification_document_params)

    respond_to do |format|
      if @account_verification_document.save
        format.html { redirect_to account_verification_document_url(@account_verification_document), notice: "Account verification document was successfully created." }
        format.json { render :show, status: :created, location: @account_verification_document }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account_verification_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_verification_documents/1 or /account_verification_documents/1.json
  def update
    respond_to do |format|
      if @account_verification_document.update(account_verification_document_params)
        format.html { redirect_to account_verification_document_url(@account_verification_document), notice: "Account verification document was successfully updated." }
        format.json { render :show, status: :ok, location: @account_verification_document }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account_verification_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_verification_documents/1 or /account_verification_documents/1.json
  def destroy
    @account_verification_document.destroy

    respond_to do |format|
      format.html { redirect_to account_verification_documents_url, notice: "Account verification document was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_verification_document
      @account_verification_document = AccountVerificationDocument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_verification_document_params
      params.require(:account_verification_document).permit(:title, :image)
    end
end
