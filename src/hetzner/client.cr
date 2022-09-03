require "crest"
require "totem"
require "json"

class Hetzner::K3s::Hetzner::Client
  getter token : String | Nil

  private getter api_url : String = "https://api.hetzner.cloud/v1"

  def initialize(token : String | Nil)
    @token = token
  end

  def get(path, params = {} of String => String | Bool | Nil) : JSON::Any
    response = Crest.get(
      "#{api_url}#{path}",
      params: params,
      json: true,
      headers: headers
    )

    JSON.parse response.body
  end

  def post(path, params = {} of KeyType => ValueType)
    response = Crest.post(
      "#{api_url}#{path}",
      params: params,
      json: true,
      headers: headers
    )

    JSON.parse response.body
  end

  def put(path, params = {} of KeyType => ValueType)
    response = Crest.put(
      "#{api_url}#{path}",
      params: params,
      json: true,
      headers: headers
    )

    JSON.parse response.body
  end

  def delete(path, params = {} of KeyType => ValueType)
    response = Crest.delete(
      "#{api_url}#{path}",
      params: params,
      json: true,
      headers: headers
    )

    JSON.parse response.body
  end

  private def headers
    {
      "Authorization" => "Bearer #{token}",
      "Content-Type" => "application/json",
      "Accept" => "application/json"
    }
  end
end

