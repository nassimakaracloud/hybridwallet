module MachineLearningBitcoin

  class HTTP
    include HTTParty
    
    base_uri "https://europewest.services.azureml.net"
    
    def initialize
    end
    
    def prediction_bitcoin(data)
      self.class.post(
        "/workspaces/7c52c9e5183446c4b1d5d62fb5f732fe/services/c5ed5b5b68be449097d76ba791c8ffa4/execute?api-version=2.0&details=true",
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
          'Authorization' => 'Bearer Ri8eETG17smrFPkWk9l8XkyGmoKtqHj3w+aS6VLNCw3YCJTgQI1qnQ5enntGYO+WiODDUFtUptMaelVEuqORmg=='
          }
        }
      )
    end
  end
end