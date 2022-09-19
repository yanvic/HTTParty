module Employee
    include HTTParty
    base_uri 'http://dummy.restapiexample.com/api/v1/'
    format :json
    headers 'Content-type': 'application/json'
end