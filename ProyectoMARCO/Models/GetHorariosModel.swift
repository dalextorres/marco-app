//
//  GetHorariosModel.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/22/21.
//

import Foundation
import SwiftUI

struct GetHorariosResponseIdCombo: Identifiable, Decodable, Encodable {
    let id: String
    let nombre: String
}

struct GetHorariosResponse:  Decodable, Encodable {
    let bloque: Int
    let guias: [GetHorariosResponseIdCombo]
    let horaInicio: String
    let numDia: Int
}

struct AddGuiaVisita: Decodable, Encodable {
    let fecha: String
    let id_visitante: String
    let id_guia: String
    let numDia: Int
    let bloque: Int
    let _id: String
    let __v: Int
}

struct AddGuiaResponse: Decodable, Encodable {
    let visita: AddGuiaVisita
    let message: String
}

struct AddGuiaReqBody: Decodable, Encodable {
    let fecha: Date
    let id_visitante: String
    let id_guia: String
    let numDia: Int
    let bloque: Int
}
