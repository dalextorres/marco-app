//
//  HorariosViewModel.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/21/21.
//

import Foundation

class HorariosViewModel : ObservableObject {
    var date = Date()
    
    func getHorarios() {
        WebService().getHorariosDisponibles(date: date) { result in
            switch result {
                case .success(let message):
                    print(message)
                    
                case .failure(let error):
                    print(error)
                
            }
        
            
        }
        
        
        
    }
    
   
    
}
