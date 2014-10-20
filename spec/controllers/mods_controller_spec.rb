# -*- encoding : utf-8 -*-
require 'spec_helper'

describe ModsController do

  describe "GET 'one'" do
    it "returns http success" do
      get 'one'
      response.should be_success
    end
  end

  describe "GET 'two'" do
    it "returns http success" do
      get 'two'
      response.should be_success
    end
  end

  describe "GET 'feedback'" do
    it "returns http success" do
      get 'feedback'
      response.should be_success
    end
  end

  describe "GET 'explain'" do
    it "returns http success" do
      get 'explain'
      response.should be_success
    end
  end

end
