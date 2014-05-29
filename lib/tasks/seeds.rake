namespace :app do
  # rake app:reset
  desc "rake app:reset"
  task reset: :environment do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["seeds:create"].invoke
  end
end

namespace :seeds do
  # rake seeds:create
  desc "rake seeds:create"
  task create: :environment do
    Post.delete_all

    posts_count = 200
    posts_count.times do |i|
      Post.create(
        title: Faker::Lorem.sentence,
        raw_content: Faker::Lorem.paragraphs(3).join,
        state: %w[ draft published ].sample
      )
      puts "Post #{ i.next }/#{ posts_count }"
    end
  end
end
