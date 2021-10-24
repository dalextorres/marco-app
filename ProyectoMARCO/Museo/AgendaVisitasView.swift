//
//  AgendaVisitasView.swift
//  ProyectoMARCO
//

import SwiftUI

struct AgendaVisitasView: View {

    @State private var date = Date()
    @State var nombreVisitante : String
    @State var numeroBoletos : Int
    @EnvironmentObject var horariosVM : HorariosViewModel
    @State private var willMove = false

    
    var body: some View {
       
        VStack {
            Text("AGENDA TU VISITA")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(height: 80)
                .padding()

            TextField(
                "Nombre del visitante",
                text: $nombreVisitante
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            DatePicker(
                "Start Date",
                selection: $horariosVM.date,
                displayedComponents: [.date]
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            
            ZStack(alignment: .trailing){
                NavigationLink(destination: HorariosDisponibles(horarios: horariosVM.horarios, id_visitante: nombreVisitante, fecha: horariosVM.date, id_guia: ""), isActive: $willMove	) {
                    EmptyView()
                }
                Button {
                    
                    horariosVM.getHorarios()
                    self.willMove = true
                } label: {
                    Image(systemName: "checkmark")
                        .frame(width: 120, height: 50)
                        .background(Color("Rosa"))
                        .cornerRadius(5)
                }
            }
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                HStack{
                    Text("Museo").foregroundColor(.white)
                }
            })
        })
        
    }
}

struct AgendaVisitasView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaVisitasView(nombreVisitante: "", numeroBoletos: 0)
    }
}
