//
//  EmtRemoteService.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 27/04/2020.
//  Copyright © 2020 David Guerrero. All rights reserved.
//

import Foundation

class EmtRemoteService {
    
    let EMT_REMOTE_ENDPOINT = "https://openapi.emtmadrid.es/"
    let EMT_REMOTE_PATH_LINES = "v1/transport/busemtmad/lines/info/%@/"
    let EMT_REMOTE_PATH_LOGIN = "v1/mobilitylabs/user/login/"
    
    func login(email: String, pass: String) {
        let session = URLSession.shared
        let urlStr = EMT_REMOTE_ENDPOINT + EMT_REMOTE_PATH_LOGIN
        let url = URL(string: urlStr)!
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue(email, forHTTPHeaderField: "email")
        urlRequest.setValue(pass, forHTTPHeaderField: "password")
        
        let task = session.dataTask(with: urlRequest, completionHandler: {data, response, error in
            if let data = data {
                do {
                   let loginData = try JSONDecoder().decode(LoginApiData.self, from: data)
                    self.getLines(token: loginData.data[0].accessToken)
                } catch let error {
                   print(error)
                }
            }
        })
        task.resume()
    }
    
    func getLines(token: String) {
        
        let session = URLSession.shared
        let urlStr = String(format: EMT_REMOTE_ENDPOINT + EMT_REMOTE_PATH_LINES, getToday())
        let url = URL(string: urlStr)!
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue(token, forHTTPHeaderField: "accessToken")
        
        let task = session.dataTask(with: urlRequest, completionHandler: {data, response, error in
            if let data = data {
                do {
                    let linesData = try JSONDecoder().decode(LinesApiData.self, from: data)
                    print(linesData)
                } catch let error {
                   print(error)
                }
            }
        })
        
        task.resume()
    }
    
    private func getToday() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "ddMMyyyy"
        return dateFormatter.string(from: Date())
    }
}
