require "bundler/gem_tasks"
require 'fileutils'
require 'fancytree/rails/version'

namespace :fancytree do
  desc "Update FancyTree library from current version"
  task :update => :build do
    cd "tmp/fancytree" do

      cd "build" do
        FileUtils.cp(Dir.glob("*.js"), '../../../vendor/assets/javascripts/fancytree')

        css_files = Dir.glob("skin*/*.css")
        css_files.each do |file|
          mkdir_p "../../../vendor/assets/stylesheets/fancytree/#{File.dirname(file)}"
          FileUtils.cp file, "../../../vendor/assets/stylesheets/fancytree/#{file}"
        end

        images_files = Dir.glob("skin*/*.gif")
        images_files.each do |file|
          mkdir_p "../../../vendor/assets/images/fancytree/#{File.dirname(file)}"
          FileUtils.cp file, "../../../vendor/assets/images/fancytree/#{file}"
        end
      end

      #following files are not in the build yet:
      FileUtils.cp(['src/jquery.fancytree.awesome.js'], '../../vendor/assets/javascripts/fancytree')

    end
  end

  task :build => "tmp/fancytree" do
    cd "tmp/fancytree" do
      #sh "npm install -g grunt-cli"
      sh "npm install"
      sh "grunt build --force" #foce because of tabfix
    end
  end

  file "tmp/fancytree" do
    mkdir_p "tmp"

    cd "tmp" do
      sh "git clone --branch '#{Fancytree::Rails::FANCYTREE_VERSION}' https://github.com/mar10/fancytree.git"
    end
  end
end
