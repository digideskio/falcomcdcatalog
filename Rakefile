require './.rake_tasks.rb' if File.file?('./.rake_tasks.rb')

namespace :assets do
  desc "Precompile the assets"
  task :precompile do
    require './falcomcdcatalog'
    Falcom::App.compile_assets
  end
end
