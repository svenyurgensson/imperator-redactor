# encoding: utf-8
module ImperatorRedactor
  class Config

    attr_accessor :images_index_path_method, :images_create_path_method


    def initialize(&block)
      yield if block_given?
    end


  end
end
