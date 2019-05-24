class CreateCollectionService
  def initialize(collection_title, collection_logo_url = nil)
    @logo_url = collection_logo_url
    @title    = collection_title
  end
  
  def call
    @create_collection = Billplz::CreateCollection.new(@title, @logo_url)
    @create_collection.call
    if collection['id'].present?
      Billplz::Collection.create({collection_id: collection['id'], title: collection['title']})
    else
      Billplz::Collection.find_by_collection_id ENV['DEFAULT_BILLPLZ_COLLECTION']
    end
  end

  def collection
    @create_collection.response
  end
  
end