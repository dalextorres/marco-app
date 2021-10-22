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


enum ComunicationError: Error{
    case connectionError
    case custom(errorMessage: String)
}

class WebService{
    func getHorariosDisponibles(date: Date, completion: @escaping (Result<[GetHorariosResponse], ComunicationError>) -> Void){
        guard let url = URL(string: "http://100.24.228.237:10022/agendarVisita/getHorariosDisponibles") else {
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
            
            
            
        if let error = error {
            completion(.failure(.custom(errorMessage: "No Data")))
            return
        }
            
        if let data = data {
            let parsedData = try! JSONDecoder().decode([GetHorariosResponse].self, from: data)
            completion(.success(parsedData))
        }
            
            
            
        }.resume()
    }
    
    func agendarHorarioDisponible(fecha: Date, id_visitante: String, id_guia: String, numDia: Int, bloque: Int, completion: @escaping (Result<AddGuiaResponse, ComunicationError>) -> Void){
        guard let url = URL(string: "http://100.24.228.237:10022/agendarVisita/addVisita") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
        
        let body = AddGuiaReqBody(fecha: fecha, id_visitante: id_visitante, id_guia: id_guia, numDia: numDia, bloque: bloque)
        
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
            
            
            
        if let error = error {
            completion(.failure(.custom(errorMessage: "No Data")))
            return
        }
            
        if let data = data {
            let parsedData = try! JSONDecoder().decode(AddGuiaResponse.self, from: data)
            completion(.success(parsedData))
        }
            
            
            
        }.resume()
    }
    
}
