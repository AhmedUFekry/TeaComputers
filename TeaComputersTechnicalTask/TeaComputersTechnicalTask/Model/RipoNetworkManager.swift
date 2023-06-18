//
//  RipoNetworkManager.swift
//  TeaComputersTechnicalTask
//
//  Created by Ahmed Fekry on 17/06/2023.
//

import Foundation
import UIKit

func recievingData(complition :@escaping ([Ripos]?) -> Void){
    let url = URL(string: "https://api.github.com/orgs/square/repos")
    let req = URLRequest(url: url!)
    let session = URLSession(configuration: URLSessionConfiguration.default)
    let task = session.dataTask(with: req) { data, response, error in
        
        do{
            if data != nil {
                let result = try JSONDecoder().decode([Ripos]?.self, from: data!)
                complition(result)
                
            }
            
        }catch let error{
            complition(nil)
            print(error.localizedDescription)
        }
    }
    task.resume()
}
