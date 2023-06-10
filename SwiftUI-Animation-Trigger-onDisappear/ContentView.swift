//
//  ContentView.swift
//  SwiftUI-Animation-Trigger-onDisappear
//
//  Created by ekayaint on 10.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showTip = true
    @State private var showTipButton = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Triggers").font(.largeTitle)
            Text("On Disappear").font(.title).foregroundColor(.gray)
            Spacer()
            
            if (showTip) {
                VStack(spacing: 20) {
                    HStack {
                        Image(systemName: "info.circle.fill")
                        Spacer()
                        Text("Some Info")
                        Spacer()
                    }.foregroundColor(.white)
                    
                    Spacer()
                    Button("Ok") {
                        showTip.toggle()
                    }
                }//: VStack
                .padding(.all,15)
                .background(Rectangle().fill(Color.green).shadow(radius: 3))
                .padding(.horizontal,10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
