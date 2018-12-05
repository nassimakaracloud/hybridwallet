module MachineLearning

  class HTTP
    include HTTParty
    
    base_uri "https://europewest.services.azureml.net"
    
    def initialize
    end
    
    def make_call(path, data = {})
      self.class.post(
        path,
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
                    data.year, 
                    data.month,
                    data.day,
                    data.hour,
                    data.minute,
                    data.high,
                    data.low,
                    data.average,
                  ],
                ]
              }
            },
            "GlobalParameters"=> {}
          },
          :headers => {
            'Content-Type' => 'application/json',
            'Accept' => 'application/json',
          'Authorization' => 'Bearer 8aBFHZ2o8n337BHwSpJJvYKxLwAG2lry4Ohs/5C3S4SjCHPKCGyRSGgkO4XGRWjTYmyH6wgeJsLflBV/vj6+sQ=='
          }
        }
      )
    end
    
    def prediction_zcash(data)
      self.class.post(
        "/workspaces/7c52c9e5183446c4b1d5d62fb5f732fe/services/5884d7e1d82b41bfb01c060749e03c03/execute?api-version=2.0&details=true",
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
          },
          :headers => {
            'Content-Type' => 'application/json',
            'Accept' => 'application/json',
          'Authorization' => 'Bearer 8aBFHZ2o8n337BHwSpJJvYKxLwAG2lry4Ohs/5C3S4SjCHPKCGyRSGgkO4XGRWjTYmyH6wgeJsLflBV/vj6+sQ=='
          }
        }
      )
    end
  end
end