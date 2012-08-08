# -*- encoding : utf-8 -*-
module ImperatorRedactor
  module ImperatorHelper

    include ActionView::Helpers::AssetTagHelper

    def include_imperator_stylesheet
      stylesheet_link_tag "imperator-redactor/redactor"
    end

    def include_imperator_javascript
      javascript_include_tag "imperator-redactor/redactor"
    end


    def imperator(element, options = {})
      javascript_var = options.delete(:javascript_var) || imperator_default_options[:javascript_var]
      normalized_options = imperator_options(options)
      result = %Q(
        var #{javascript_var};

        $(document).ready(function() {
          #{javascript_var} = document.#{element}_redactor = $('##{element}').redactor(#{normalized_options.to_json});
        });
      )
      lang_script_include =
        if normalized_options[:lang] != 'en'
          javascript_include_tag "imperator-redactor/langs/#{normalized_options[:lang]}"
        else
          nil
        end
      [lang_script_include, javascript_tag(result)].compact.join("\n").html_safe
    end

    def imperator_options(options)
      options = normalize_options(options)
      imperator_default_options.deep_merge!(options)
    end

    def normalize_options options
      if options[:css] && options[:css] !~ /^\.\.\//
        options[:css] = "../#{options[:css]}"
      end

      case options[:style]
      when "word", "docstyle"
        options[:css] = "../docstyle.css"
      when "standart"
        options[:css] = "../style.css"
      when "wym"
        options[:css] = "../wym.css"
      end
      options.delete(:style)

      # set default style
      unless options[:css]
        options[:css] = "../style.css"
      end


      # set images index, upload pathes
      unless options[:imageGetJson]
        options[:imageGetJson] = self.send(ImperatorRedactor.config.images_index_path_method) || false
      end
      unless options[:imageUpload]
        options[:imageUpload] = self.send(ImperatorRedactor.config.images_create_path_method) || false
      end


      options
    end

    def imperator_default_options
      {

        lang:            'en',
#        toolbar:         'object',
        fixed:            false,
#        buttons:         '',
#        buttonsCustom:   '',
#        buttonsAdd:      [],
        path:                 '/assets/imperator-redactor',

        focus:                false,
        resize:               true,
        autoresize:           false,


        autoformat:           true,
        cleanUp:              true,
        convertDivs:          true,
        removeClasses:        true,
        removeStyles:         false,
        convertLinks:         true,

        autosave:             false,
        interval:             60,

        imageGetJson:         false,
        imageUpload:          false,
        imageUploadCallback:  false,
        fileUpload:           false,
        fileUploadCallback:   false,

        direction:            'ltr',

        fullscreen:           false,
        overlay:              true,

        callback:             false,
        keyupCallback:        false,
        keydownCallback:      false,
        execCommandCallback:  false,

        xhtml:                false,
        observeImages:        true,

        javascript_var: 'imperator_redactor',
      }
    end


  end
end
