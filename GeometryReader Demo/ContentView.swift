//
//  ContentView.swift
//  GeometryReader Demo
//
//  Created by Harvey Duperier on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            
            Rectangle()
                .frame(width: 200, height: 200, alignment: .center)
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
