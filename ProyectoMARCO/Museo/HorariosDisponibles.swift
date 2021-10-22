//
//  HorariosDisponibles.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/22/21.
//

import SwiftUI

struct HorariosDisponibles: View {
    let horarios: [GetHorariosResponse]
    let id_visitante: String
    let fecha: Date
    let id_guia : String
    @EnvironmentObject var horariosVM : HorariosViewModel
    @State private var showAlert = false
    
    var body: some View {
       
        VStack {
        Text("Horarios Disponibles")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(height: 80)
                .padding()
        List(horarios, id: \.bloque) { horario in
            Button {
                horariosVM.bloque = horario.bloque
                horariosVM.numDia = horario.numDia
                horariosVM.id_visitante = id_visitante
                horariosVM.date = fecha
                horariosVM.id_guia = horario.guias[0].id
                horariosVM.agendarHorario()
                showAlert = true
            } label: {
                HStack {
                    Text("\(horario.horaInicio)")
                }
            }
        }
        .alert(isPresented: $showAlert){
            Alert(title: Text("Reserva Creada"), message: Text("Tu reserva ha sido guardada con exito"))
        }

        }
            }
}

