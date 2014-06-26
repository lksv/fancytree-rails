require "bundler/gem_tasks"
require 'fileutils'
require 'fancytree/rails/version'

def build_image_dependencies(source_code)
  image_dependencies = Set.new source_code.scan(/url\("(icons.gif)"?\)/).map(&:first)
  code = image_dependencies.inject("") do |acc, img|
    acc += " *= depend_on_asset \"fancytree/#{img}\"\n"
  end
end


namespace :fancytree do
  desc "Update FancyTree library from current version"
  task :update => :build do
    cd "tmp/fancytree" do

      cd "dist" do
        js = FileList['*'].exclude(/\Askip*/)
        FileUtils.cp_r(js, '../../../app/assets/javascripts/fancytree')

        css_files = Dir.glob("skin*/*.css")
        css_files.each do |file|
          source_code = File.read(file)
          source_code.gsub!(/\A(\/\*!.+?\*\/\s)/m, "\\1\n/*\n#{build_image_dependencies(source_code)} */\n\n") unless build_image_dependencies(source_code).empty?
          source_code.gsub!(/url\("icons.gif"\)/, 'url(<%= image_path("fancytree/icons.gif") %>)')

          output_path = "../../../app/assets/stylesheets/fancytree/#{file}.erb"
          mkdir_p File.dirname(output_path)
          File.open(output_path, "w") do |out|
            out.write(source_code)
          end
        end

        images_files = Dir.glob("skin*/*.gif")
        images_files.each do |file|
          mkdir_p "../../../app/assets/images/fancytree/#{File.dirname(file)}"
          FileUtils.cp file, "../../../app/assets/images/fancytree/#{file}"
        end
      end

    end
  end

  task :build => "tmp/fancytree" do
    cd "tmp/fancytree" do
      #sh "npm install -g grunt-cli"
      #Non needed any more, currnetyl ./dist contains compiled version for the release
      # sh "npm install"
      # sh "grunt build --force" #foce because of tabfix
    end
  end

  file "tmp/fancytree" do
    mkdir_p "tmp"

    cd "tmp" do
      sh "git clone --branch '#{Fancytree::Rails::FANCYTREE_VERSION}' https://github.com/mar10/fancytree.git"
    end
  end
end
