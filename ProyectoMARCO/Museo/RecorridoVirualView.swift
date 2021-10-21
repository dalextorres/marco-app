//
//  RecorridoVirtualView.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 06/09/21.
//
import SwiftUI

struct RecorridoVirtualView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("ENTRA AL MUSEO")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(height: 80)
                    .padding()
                
                
                NavigationLink(
                    destination: RecorreMarcoView(),
                    label: {
                        ZStack {
                            
                            
                            Image("image 11")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 330)
                                .shadow(radius: 10)
                            
                            Text("RECORRE MARCO")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("Blanco"))
                                .multilineTextAlignment(.center)
                            
                            
                        }
                    })
                
                Text("EXPOSICIONES")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                NavigationLink(destination: ExhibicionDetailView(name: "INDEX", author: "MARCO y FFProjects", descripcion: "A raíz de la fuerte crisis económica que enfrentan los museos a nivel internacional, y derivado de la necesidad de buscar nuevos posicionamientos de las producciones artísticas actuales, MARCO pensó en el patio de las esculturas como una posibilidad de generar nexos con la comunidad artística de Monterrey que se ha preocupado por buscar un lugar en el espacio institucional global. Por tal motivo, su directora Taiyana Pimentel en colaboración con los Miembros del Consejo Directivo, pensaron en este proyecto. El subtexto de la exposición es relevante al momento que estamos todos viviendo e incita a reflexionar sobre las maneras en las cuales los eventos de actualidad informan el trabajo creativo de artistas reconocidos mundialmente.", img: "exhib_1", url: "https://www.patiomarco.360s.mx/"), label: {
                    ExhibicionView(img: "exhib_1", name: "INDEX", author: "MARCO y FFProjects")
                })
                
                NavigationLink(destination: ExhibicionDetailView(name: "La poética del Regreso", author: "Mario García Torres", descripcion: "En esta muestra curada por Taiyana Pimentel, se establece un paralelismo entre las prácticas posconceptuales y de inmersión en la construcción histórica por la que se ha conocido a García Torres, con los inicios de sus estrategias estéticas en las ciudades de Monterrey y México; se analiza a través de obras tempranas, las connotaciones del sentido del espacio y del paisaje nacidos tempranamente en la ciudad que le acogió en su época de formación y que son conceptos que lo han acompañado en su práctica artística posterior. Con base en esta premisa, se podrán apreciar obras como la pintura Cerro de la Silla, 1998 y el video Open Letter to Dr. Atl, 2005, realizado en Guadalajara. La poética del regreso propone una selección de obras que en su mayoría han sido presentadas en recintos internacionales pero que será la primera vez que se expongan en la ciudad tales como: Merz, Rzemmmm Zeeeeerm Emrzzzzz (At Fibonacci Pace), s/f, The Schilieren Plot, 2013, La Fiesta fue ayer (una narrativa fragmentada sobre la breve historia del Museo Dinámico), s/f, Unspoken Dailies, 2003-2009, Tetela, 2015 y Silence´s Wearing Thin Here Mario García, s/f, entre otras.", img: "exhib_2", url: "https://www.youtube.com/watch?time_continue=1&v=swhrA3qoqx4&feature=emb_logo"), label: {
                    ExhibicionView(img: "exhib_2", name: "La poética del Regreso", author: "Mario García Torres")
                })
                
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
}

struct RecorridoVirtualView_Previews: PreviewProvider {
    static var previews: some View {
        RecorridoVirtualView()
    }
}
