//
//  CardView.swift
//  ProyectoMARCO
//
//  Created by user195618 on 9/5/21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Rectangle()
            .fill(Color.pink)
            .frame(height: 350)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
