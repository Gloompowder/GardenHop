config = {
  host: "http://localhost:9200/",
  transport_options: {
    #   default timeout 10 seconds
    request: { timeout: 20 }
  }
}
Elasticsearch::Model.client = Elasticsearch::Client.new(config)
