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
    
    // MARK: - Variables
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataFetch()
//        self.fetchMovie(title: "Bhool Bhulaiyaa 3", completion: {_ in result, error in })
    }
    
    // MARK: - Function's
    
    // MARK: - IB Actoin method
    
}

// MARK: - Extension

// MARK: - Delegate method

// MARK: - API Call
extension HomeScreen {
    func dataFetch(){
//        let apiToContact = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        let apiToContact = "https://fakestoreapi.com/products"
        // This code will call the iTunes top 25 movies endpoint listed above
        Alamofire.request(apiToContact).validate().responseJSON() { response in
            switch response.result {
            case .success(_):
                guard let statusCode = response.response?.statusCode else {
                    print("Error")
                    return
                }
                if (200..<300).contains(statusCode) {
                    if let data = response.apiResponse {
                        print(data)
                    }
                }
                
                print(response)
            case .failure(_):
                print("Error")
            }
        }
    }
}
