FactoryGirl.define do

  factory :album do
    name "Amnesiac"
    artist
  end

  factory :artist do
    name "Radiohead"

    factory :artist_with_albums do
      transient do
        albums_count 5
      end
      
      after(:create) do |artist, evaluator|
        create_list(:album, evaluator.albums_count, artist: artist)
      end
    end
  end
end
