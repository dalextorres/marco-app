//
//  AgendaVisitasView.swift
//  ProyectoMARCO
//

import SwiftUI

struct AgendaVisitasView: View {

    @State private var date = Date()
    @State var nombreVisitante : String
    @State var numeroBoletos : Int

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

            HStack{
                Text("Numero de boletos:")
                    .padding()

                Text("\(numeroBoletos)")
                    .multilineTextAlignment(.trailing)

                Stepper(
                    "",
                    value: $numeroBoletos
                )
                .padding()

            }

            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(GraphicalDatePickerStyle())

            ZStack(alignment: .trailing){
                Image(systemName: "checkmark")
                    .frame(width: 120, height: 50)
                    .background(Color("Rosa"))
                    .foregroundColor(.white)
                    .clipShape(Rectangle())
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
