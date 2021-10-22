//
//  HorariosViewModel.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/21/21.
//

import Foundation

class HorariosViewModel : ObservableObject {
    var date = Date()
    var id_visitante = ""
    var id_guia = ""
    var numDia = 1
    var bloque = 1
    @Published var horarios: [GetHorariosResponse]
    
     init(){
         horarios = []
    }
    
    func getHorarios() {
        WebService().getHorariosDisponibles(date: date) { result in
            switch result {
                case .success(let message):
                DispatchQueue.main.async {
                    self.horarios = message
                }
                
               
                    
                case .failure(let error):
                    print(error)
                
            }
        
            
        }
        
        
        
    }
    
    func agendarHorario() {
        WebService().agendarHorarioDisponible(fecha: date, id_visitante: id_visitante, id_guia: id_guia, numDia: numDia, bloque: bloque) { result in
            switch result {
            case .success(let message):
                print(message)
            case .failure(let error):
                print(error)
            }
        }
    }
    
   
    
}
