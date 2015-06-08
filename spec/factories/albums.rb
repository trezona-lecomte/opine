FactoryGirl.define do

  factory :album do
    name "Amnesiac"
    artist

    factory :album_with_tracks do
      transient do
        tracks_count 5
      end

      after(:create) do |album, evaluator|
        create_list(:track, evaluator.tracks_count, album: album)
      end
    end
  end
end
