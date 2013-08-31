# encoding: utf-8

require 'slim'

module Nanoc::Slim

  class Filter < Nanoc::Filter

    identifier :slim

    def run(content, params={})
      params = {
        :disable_capture => true,      # Capture managed by nanoc
        :buffer          => '_erbout', # Force slim to output to the buffer used by nanoc
      }.merge params

      context = ::Nanoc::Context.new(assigns)

      ::Slim::Template.new(params) { content }.render(context) { assigns[:content] }
    end

  end

end
