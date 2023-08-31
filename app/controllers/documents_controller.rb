class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = current_user.documents.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @document = Document.new
    @user = current_user
  end

  def create
    @document = Document.new(document_params)
    @document.user_id = current_user.id
    if @document.save
      redirect_to documents_path
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
    redirect_to documents_path, status: :see_other
  end

  def my_documents
    @my_document = current_user.documents
  end

  private

  def document_params
    params.require(:document).permit(:date, :photo, :type, :title, :doctor, :document, :category, :patient_id, :user_id)
  end

  def set_document
    @document = Document.find(params[:id])
  end
end
