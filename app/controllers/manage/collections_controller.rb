class Manage::CollectionsController < Manage::ManageController
  before_action :set_collection, only: [:show, :edit, :update, :delete]
  def index
    @collections = Billplz::Collection.all
  end

  def show
  end

  # def edit
  # end

  # def update
  # end

  def new
    @collection = Billplz::Collection.new
  end

  def create
    # file = params[:billplz_collection][:image].tempfile.open.read.force_encoding(Encoding::UTF_8)
    title = params[:billplz_collection][:title]
    @collection = CreateCollectionService.new(title, current_user.id)
    collection = @collection.call
    if collection
      redirect_to manage_collection_path(collection), notice: "A new collection have been created"
    else
      render :new, alert: "An error have prevented collection from being created."
    end
  end

  def delete
    @collection.destroy
    redirect_to manage_collections_path, notice: 'Collection have been deleted.'
  end

  private
  def set_collection
    @collection = Billplz::Collection.find(params[:id])
  end

  def collection_params
    params.require(:billplz_collection).permit(:title, :image)
  end
end
