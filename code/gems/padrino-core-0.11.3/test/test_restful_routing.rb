#---
# Excerpted from "Metaprogramming Ruby 2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr2 for more book information.
#---
require File.expand_path(File.dirname(__FILE__) + '/helper')

describe "Routing" do
  should 'perform restul routing' do
    mock_app do
      controller :parent => :parents do
        get :index do
          "#{url_for(:index, params[:parent_id])} get"
        end

        put :index, :with => :asset_id do
          "#{url_for(:index, params[:parent_id], :asset_id => params[:asset_id])} put"
        end

        post :index, :with => :asset_id do
          "#{url_for(:index, :parent_id => params[:parent_id], :asset_id => params[:asset_id])} post"
        end

        delete :index, :with => :asset_id do
          "#{url_for(:index, params[:parent_id], :asset_id => params[:asset_id])} delete"
        end
      end
    end
    get "/parents/1"
    assert_equal "/parents/1 get", body
    put "/parents/1/hi"
    assert_equal "/parents/1/hi put", body
    post "/parents/1/hi"
    assert_equal "/parents/1/hi post", body
    delete "/parents/1/hi"
    assert_equal "/parents/1/hi delete", body
  end
end
