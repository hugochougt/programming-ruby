require "erubis"
require "rulers/file_model"

module Rulers
  class Controller
    include Rulers::Model

    attr_reader :env

    def self.action(act, rp = {})
      proc { |e| self.new(e).dispatch(act, rp) }
    end

    def initialize(env)
      @env = env
      @routing_params = {}
    end

    def request
      @request ||= Rack::Request.new(env)
    end

    def params
      request.params.merge @routing_params
    end

    def dispatch(action, routing_params = {})
      @routing_params = routing_params
      text = self.send(action)

      if get_response
        st, hd, rs = get_response.to_a
        [st, hd, [rs.body].flatten]
      else
        [200, {'Content-Type' => 'text/html'}, [text]]
      end
    end

    def response(text, status = 200, headers = {})
      raise "Aleady responsed!" if @response
      a = [text].flatten
      @response = Rack::Response.new(a, status, headers)
    end

    def get_response # Only for Rulers
      @response
    end

    def render_response(*args)
      response(render(*args))
    end

    def render(view_name, locals = {})
      filename = File.join "app", "views", controller_name, "#{view_name}.html.erb"
      template = File.read filename
      erb = Erubis::Eruby.new template
      erb.result locals.merge(env: env)
    end

    def controller_name
      klass = self.class
      klass = klass.to_s.gsub /Controller$/, ""
      Rulers.to_underscore klass
    end
  end
end
