//
//  HomeScreen.swift
//  Movies Info
//
//  Created by Kushang  on 04/11/24.
//

import UIKit
import Alamofire
import ObjectMapper

class HomeScreen: UIViewController {

    // MARK: - IB Outlet
    let apiKey = "d8a6f01c"
    // MARK: - Variables
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.dataFetch()
        self.fetchMovieDetails(title: "Bhool Bhulaiyaa 3") { result in
            switch result {
               case .success(let movieData):
                   print("Movie data: \(movieData)")
               case .failure(let error):
                   print("Error fetching movie: \(error.localizedDescription)")
               }
        }
//        self.fetchMovie(title: "Bhool Bhulaiyaa 3", completion: {_ in result, error in })
    }
    
    // MARK: - Function's
    
    // MARK: - IB Actoin method
    
}

// MARK: - Extension

// MARK: - Delegate method

// MARK: - API Call
extension HomeScreen {
//    func dataFetch(){
//        let url = "https://www.omdbapi.com/"
////        let url = "https://www.omdbapi.com/?apikey=d8a6f01c&t=Bhool%20Bhulaiyaa%203"
//        let parameters: [String: String] = [
//                "apikey": apiKey,
//                "t": "Bhool Bhulaiyaa 3"
//            ]
//        // This code will call the iTunes top 25 movies endpoint listed above
////        Alamofire.request(apiToContact).validate().responseJSON() { response in
//        Alamofire.request(url, parameters: parameters).responseJSON { response in
//            switch response.result {
//            case .success(_):
//                guard let statusCode = response.response?.statusCode else {
//                    print("Error")
//                    return
//                }
//                if (200..<300).contains(statusCode) {
//                    if let json = response as? [String: Any] {
//                        print(json)
//                    }
//                    print(response)
//                }
//                
//                print(response)
//            case .failure(_):
//                print("Error")
//            }
//        }
////        Alamofire.request(url, parameters: parameters).responseJSON { response in
////                switch response.result {
////                case .success(let value):
////                    if let json = value as? [String: Any] {
////                        completion(.success(json))
////                    } else {
////                        completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid JSON response"])))
////                    }
////                case .failure(let error):
////                    completion(.failure(error))
////                }
////            }
//    }
    func fetchMovieDetails(title: String, completion: @escaping (Result<[String: Any]>) -> Void) {
        let apiKey = "d8a6f01c"  // Replace with your API key
        let url = "https://www.omdbapi.com/"
        
        let parameters: [String: String] = [
            "apikey": apiKey,
            "t": title
        ]
        
        Alamofire.request(url, parameters: parameters).responseJSON { response in
            switch response.result {
            case .success(let value):
                if let json = value as? [String: Any] {
                    completion(.success(json))
//                    print(json)
                } else {
                    print(response)
                    completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid JSON response"])))
                }
            case .failure(let error):
                print(error)
                completion(.failure(error))
            }
        }
    }
}
