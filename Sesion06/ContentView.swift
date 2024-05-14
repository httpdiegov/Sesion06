//
//  ContentView.swift
//  Sesion06
//
//  Created by Alumno on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var valor: Int = 0
    var body: some View{
        VStack{
            contadorView(valor:$valor)
            cursosView()
            Spacer()
        }
    }
    }

struct contadorView: View{
    @Binding var valor: Int

    var body: some View {
                Button(action:{
                    valor += 1},
                       label: {
                    Text("Activar")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                Text("\(valor)")
                    
                
            }
    
}
struct cursosView: View{
    @StateObject var cursos = cursosModel()
    var body: some View{
        NavigationView{
            List(cursos.cursos, id:\.self){
                curso in Text(curso)
            }.navigationTitle("Cursos ISIL")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action: {cursos.agregar()},
                               label: {
                            Image(systemName: "plus")})
                    }
                    ToolbarItem{
                        Button(action: {cursos.eliminar()},
                               label: {
                            Image(systemName: "trash")})
                    }
                }
        }
    }
    
    
}
#Preview {
    ContentView()
}
