class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = current_user.patients.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @offer.save
      redirect_to document_path(@document)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @document.update(document_params)
      redirect_to document_path(@document)
      flash[:alert] = "Modifié avec succès!"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_path, status: :no_content
  end


  def my_documents
    @my_document = current_user.documents
  end

  private

  def documents_params
    params.require(:offer).permit(:date, :pdf_file, :type, :title, :doctor)
  end

  def set_document
    @document = Document.find(params[:id])
  end
end