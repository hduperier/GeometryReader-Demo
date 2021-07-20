//
//  ContentView.swift
//  GeometryReader Demo
//
//  Created by Harvey Duperier on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
            
            VStack {
                GeometryReader {geo in
                    
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
                        .onTapGesture {
                            print("x: \(geo.frame(in: .global).minX) , y: \(geo.frame(in: .global).minY)")
                            print("x: \(geo.frame(in: .local).minX) , y: \(geo.frame(in: .local).minY)")
                        }
                    
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: geo.size.width*2/3, height: geo.size.height/8, alignment: .center)
                        .padding(69.0)
                        .offset(x: 0.0, y: 69.0)
                    
                    Rectangle()
                        .foregroundColor(.purple)
                        .frame(width: geo.size.width/2, height: geo.size.height/2, alignment: .center)
                        .offset(x: 0.0, y: 405.0)
                    
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: geo.size.width/2, height: geo.size.height/2, alignment: .center)
                        .offset(x: 207.0, y: 405.0)
                }
                
            }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
