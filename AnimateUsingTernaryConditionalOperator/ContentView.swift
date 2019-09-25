//
//  ContentView.swift
//  AnimateUsingTernaryConditionalOperator
//
//  Created by ramil on 25/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isRotating = false
    var body: some View {
        ZStack {
            Image(systemName: "bell")
                .font(.largeTitle)
            .scaleEffect(2)
                .rotationEffect(.degrees(isRotating ? 360 : 0), anchor: .top)
                .animation(Animation.spring(response: 0.87, dampingFraction: 0.5, blendDuration: 1).repeatForever(autoreverses: true))
                .onAppear(){
                    self.isRotating.toggle()
                    
            }
            .onTapGesture {
                self.isRotating.toggle()
            }
            Circle()
                .frame(width: 20)
                .shadow(radius: 5)
                .offset(y: -30)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
