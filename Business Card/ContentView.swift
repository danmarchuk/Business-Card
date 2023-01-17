//
//  ContentView.swift
//  Business Card
//
//  Created by Данік on 16/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [ Color(red: 0.21, green: 0.15, blue: 0.30),
                                     Color(red: 0.10, green: 0.16, blue: 0.34) ],
                           startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 200, height: 200)
                    Image("ME")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 5))
                }
                
                Text("Danyil Marchuk")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .bold().font(.system(size: 20))
                Divider()
                InfoView(text: "+48777888999", imageName: "phone.fill")
                InfoView(text: "danmarchuk9@gmail.com", imageName: "envelope.fill")
                
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


