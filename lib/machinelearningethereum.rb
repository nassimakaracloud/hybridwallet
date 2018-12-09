module MachineLearningEthereum

  class HTTP
    include HTTParty
    
    base_uri "https://europewest.services.azureml.net"
    
    def initialize
    end
    
    def prediction_ethereum(data)
      self.class.post(
        "/workspaces/7c52c9e5183446c4b1d5d62fb5f732fe/services/6d22b73ff8884601af86d89668a8805e/execute?api-version=2.0&details=true",
        {
          :body => {
            "Inputs"=> {
              "input1"=>{
                "ColumnNames" => [
                  "year",
                  "month",
                  "day",
                  "hour",
                  "minute",
                  "High",
                  "Low",
                  "Average"
                ],
                "Values" => [
                  [
                    data['year'], 
                    data['month'],
                    data['day'],
                    data['hour'],
                    data['minute'],
                    data['high'],
                    data['low'],
                    data['average'],
                  ],
                ]
              }
            },
            "GlobalParameters"=> {}
          }.to_json,
          :headers => {
            'Content-Type' => 'application/json',
            'Accept' => 'application/json',
            'Authorization' => 'Bearer '+ ENV['ML_ETH']
          }
        }
      )
    end
  end
end