//
//  WebServices.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 04/10/21.
//

import Foundation

enum AuthenticationError: Error {
    case invalidCredentials
    case custom(errorMessage: String)
}

struct LoginRequestBody: Codable {
    let email: String
    let password: String
}

struct LoginResponse: Codable {
    let message: String?
    let success: Bool?
}

struct SignupRequestBody: Codable {
    let nombre: String
    let email: String
    let password: String
    let tipo: String
}

struct SignupResponse: Codable {
    let message: String?
    let success: Bool?
}

class AuthWebService {
    func login(email: String, password: String, completion: @escaping (Result<String, AuthenticationError>) -> Void) {
        guard let url = URL(string: "http://100.24.228.237:10022/users/loginUser") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
        
        let body = LoginRequestBody(email: email, password: password)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            guard let message = loginResponse.message else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            completion(.success(message))
            
        }.resume()
        
    }
    
    func signup(nombre: String, email: String, password: String, tipo: String, completion: @escaping (Result<String, AuthenticationError>) -> Void) {
        
        guard let url = URL(string: "http://100.24.228.237:100222/users/signupUser") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
        
        let body = SignupRequestBody(nombre: nombre, email: email, password: password, tipo: tipo)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            guard let signupResponse = try? JSONDecoder().decode(SignupResponse.self, from: data) else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            guard let message = signupResponse.message else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            completion(.success(message))
            
        }.resume()
        
    }
    
}
