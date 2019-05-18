describe "PadrinoLogger" do
  #...
  context 'for logger functionality' do

    context "static asset logging" do
      should 'not log static assets by default' do
        # ...
        mock_app do
          enable :logging
          get("/images/something.png"){ env["sinatra.static_file"] = '/public/images/something.png'; "Foo" }
        end
        get "/images/something.png"
        assert_equal "Foo", body
        assert_match "", Padrino.logger.log.string
      end

      should 'allow turning on static assets logging' do
        Padrino.logger.instance_eval{ @log_static = true }
        # ...
        mock_app do
          enable :logging
          get("/images/something.png"){ env["sinatra.static_file"] = '/public/images/something.png'; "Foo" }
        end
        get "/images/something.png"
        assert_equal "Foo", body
        assert_match /GET/, Padrino.logger.log.string
        Padrino.logger.instance_eval{ @log_static = false }
      end
    end
    #...
  end
end