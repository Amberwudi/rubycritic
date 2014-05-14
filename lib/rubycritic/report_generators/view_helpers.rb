module Rubycritic

  module ViewHelpers
    def javascript_path(file)
      asset_path(File.join("javascripts", "#{file}.js"))
    end

    def stylesheet_path(file)
      asset_path(File.join("stylesheets", "#{file}.css"))
    end

    def asset_path(file)
      File.join(root_directory, "assets", file)
    end

    def smell_location_path(location)
      pathname = location.pathname
      File.join(root_directory, "#{pathname.sub_ext('.html')}#L#{location.line}")
    end

    def overview_path
      File.join(root_directory, "overview.html")
    end

    def code_index_path
      File.join(root_directory, "code_index.html")
    end

    def smells_index_path
      File.join(root_directory, "smells_index.html")
    end

    def root_directory
      ::Rubycritic.configuration.root
    end
  end

end
