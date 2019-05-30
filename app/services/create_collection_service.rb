class CreateCollectionService
  def initialize(collection_title, user_id, collection_logo = nil)
    @logo     = collection_logo
    @title    = collection_title
    @user_id  = user_id
  end
  
  def call
    @create_collection = Billplz::CreateCollection.new(@title, @logo)
    @create_collection.call
    if collection['id'].present?
      Billplz::Collection.create({collection_id: collection['id'], title: collection['title'], user_id: @user_id})
    else
      Billplz::Collection.find_by_collection_id ENV['DEFAULT_BILLPLZ_COLLECTION']
    end
  end

  def collection
    @create_collection.response
  end
  
end