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
                        .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                        .onTapGesture {
                            print("x: \(geo.frame(in: .global).minX) , y: \(geo.frame(in: .global).minY)")
                            print("x: \(geo.frame(in: .local).minX) , y: \(geo.frame(in: .local).minY)")
                        }
                    
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 100, height: 100, alignment: .center)
                        //.padding([.leading, .top], 30)
                        .offset(x:30, y:30)
                }
                
                GeometryReader {geo in
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                    .onTapGesture {
                        print("x: \(geo.frame(in: .global).minX) , y: \(geo.frame(in: .global).minY)")
                        print("x: \(geo.frame(in: .local).minX) , y: \(geo.frame(in: .local).minY)")
                    }
                }
            }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
