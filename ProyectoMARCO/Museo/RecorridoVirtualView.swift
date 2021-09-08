//
//  RecorridoVirtualView.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 06/09/21.
//

import SwiftUI

struct RecorridoVirtualView: View {
    var body: some View {
        VStack{
            Text("ENTRA AL MUSEO")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(height: 80)
                .padding()
            
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

struct RecorridoVirtualView_Previews: PreviewProvider {
    static var previews: some View {
        RecorridoVirtualView()
    }
}
