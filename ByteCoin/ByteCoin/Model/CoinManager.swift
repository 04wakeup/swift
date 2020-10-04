 
 import Foundation
 
 protocol CoinManagerDelegate {
//    func didUpdateRate(_ coinManager: CoinManager, rate: RateModel)
    func didUpdatePrice(price: String, currency: String)
    func didFailWithError(error: Error)
 }
 
 
 struct CoinManager {
    var delegate:CoinManagerDelegate?
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "1095E2E6-8C8E-4583-9093-7DFC8F1943DC"
    //  ttps://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=1095E2E6-8C8E-4583-9093-7DFC8F1943DC
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    
    func getCoinPrice(for currency: String){
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(with: urlString, for: currency)
    }
    
    func performRequest(with path: String, for currency: String){
        let urlString = path
        if let url = URL(string: urlString){  // validate url path
            let session = URLSession(configuration: .default)  // create a session
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data{
                    if let rate = self.parseJSON(safeData){
                        let priceString = String(format: "%.2f", rate.rate)
                        self.delegate?.didUpdatePrice(price: priceString, currency: currency)
                    }
                }
            }
            task.resume()  // resume the receiving
        }
    }
    
    func parseJSON(_ rateData: Data) -> RateModel? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(RateData.self, from: rateData)
            let rate = decodedData.rate
            let base = decodedData.asset_id_base
            let currency = decodedData.asset_id_quote
            let time = decodedData.time
            return RateModel(time: time, base: base, currency: currency, rate: rate)
        }catch{
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
     
    
 }
