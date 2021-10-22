//
//  WebService.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/21/21.
//

import Foundation

struct GetHorariosReqBody: Codable {
    let fecha: Date
}

struct GetHorariosResponseIdCombo: Codable {
    let id: String
    let nombre: String
}

struct GetHorariosResponse: Codable {
    let bloque: Int
    let guias: [GetHorariosResponseIdCombo]
}

enum ComunicationError: Error{
    case connectionError
    case custom(errorMessage: String)
}

class WebService{
    func getHorariosDisponibles(date: Date, completion: @escaping (Result<Bool, ComunicationError>) -> Void){
        guard let url = URL(string: "http://100.24.228.237:10022/agendarVisitas/getHorariosDisponibles") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
        
        let body = GetHorariosReqBody(fecha: date)
        
        print(body)
        
        //Codigo para formatear la fecha antes de enviarla a la API
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .formatted(formatter)
        
    
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? encoder.encode(body)  // con esta linea de código puedes enviar la fecha formateada
        print(request)
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            guard let GetHorariosResponse = try? JSONDecoder().decode(GetHorariosResponse.self, from: data) else {
                completion(.failure(.connectionError))
                return
            }
            
            print(data)
            
            /*guard let token = AddReservaResponse.success else {
                completion(.failure(.connectionError))
                return
            }*/
            print(GetHorariosResponse)
            completion(.success(true))
            
            
        }.resume()
    }
    
}
