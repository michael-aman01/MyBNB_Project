json.array! @Listings do |listing|
    json.extract! listing, :id, :title
    json.photoUrl listing.photo.url
end