 
import Foundation

 protocol RateManagerDelegate {
    func didUpdateRate(_ coinManager: CoinManager, rate: RateModel)
    func didFailWithError(error: Error)
 }
 
 
struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "1095E2E6-8C8E-4583-9093-7DFC8F1943DC"
    //  ttps://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=1095E2E6-8C8E-4583-9093-7DFC8F1943DC
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    var delegate:RateManagerDelegate?
    
    func getCoinPrice(for currency: String){
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(with: urlString)
    }
    
    func performRequest(with path: String){
        let urlString = path
        if let url = URL(string: urlString){  // validate url path
            let session = URLSession(configuration: .default)  // create a session
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data{
                     var backToString = String(data: safeData, encoding: String.Encoding.utf8) as String?  // convert to String
                     print(backToString)
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
            let time = decodedData.time
            let currency = decodedData.currency
            let base = decodedData.base
            
            let rateModel = RateModel(time: time, base: base, currency: currency, rate: rate)
            print(rateModel.rate)
            return rateModel
        }catch{
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
