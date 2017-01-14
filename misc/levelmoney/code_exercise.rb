require 'json'
require 'pp'
require 'net/http'

GET_ALL_TRANSACTIONS_ENDPOINT = 'https://2016.api.levelmoney.com/api/v2/core/get-all-transactions'

def get_all_transactions
  uri = URI(GET_ALL_TRANSACTIONS_ENDPOINT)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  req = Net::HTTP::Post.new(uri.path,
    'Content-Type' => 'application/json',
    'Accept'       => 'application/json')
  req.body = {
    "args": {
      "uid": 1110590645,
      "token": "CD2A594DE5B0B0CDB5C0CA2FEEE2E4EC",
      "api-token": "AppTokenForInterview",
      "json-strict-mode": false,
      "json-verbose-response": false
    }
  }.to_json

  # TODO: handle network errors
  response = http.request(req)
  JSON.parse(response.body)
end

def process_transactions(transactions)
  balance = {}
  transactions.each do |transaction|
    month = transaction['transaction-time'][0, 7]
    balance[month] = { 'spent' => 0, 'income' => 0 } unless balance.has_key?(month)

    if transaction['amount'] > 0
      balance[month]['income'] += transaction['amount']
    else
      balance[month]['spent']  += transaction['amount']
    end
  end

  return balance
end

def calculate_average(balance)
  total_spent, total_income = 0, 0

  balance.each do |key, val|
    total_spent += val['spent']
    total_income += val['income']
  end

  return {
    'spent' => total_spent,
    'income' => total_income
  }
end

def display_balance(balance)
  formatted_balance = balance.sort.map do |month, bal|
    [month, {
      'spent' => centocents_to_dollars(-bal['spent']),
      'income' => centocents_to_dollars(bal['income']),
    }]
  end.to_h

  pp formatted_balance
end

def centocents_to_dollars(num)
  '$%.2f' % (num / 10000.to_f)
end

# main code
if __FILE__ == $PROGRAM_NAME
  # response = JSON.parse(File.read('./transactions-data.json'))
  response = get_all_transactions

  if response['error'] == 'no-error'
    balance = process_transactions(response['transactions'])
    average = calculate_average(balance)
    balance_with_average = balance.merge({ 'average' => average })
    display_balance(balance_with_average)
  else
    puts response['error']
  end
end
