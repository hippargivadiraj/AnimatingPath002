//
//  ContentView.swift
//  AnimatingPath002
//
//  Created by Vadiraj Hippargi on 2/14/21.
//

import SwiftUI

struct ContentView: View {
    //    var height: CGFloat = 200
    //        var width: CGFloat = 200
    
    @State private var percentage: CGFloat = .zero
    @State private var percentage2: CGFloat = .zero
    @State private var percentage3: CGFloat = .zero
    @State private var percentage4: CGFloat = .zero
    var body: some View {
        
        ZStack {         // as for me, looks better w/o stack which tighten path
            Path { path in
                path.move(to: CGPoint(x: 400, y: 400))
                path.addLine(to: CGPoint(x: 400, y: 300))
                path.addLine(to: CGPoint(x: 100 , y: 200))
                path.addLine(to: CGPoint(x: 100, y: 10))
            }
            .trim(from: 0, to: percentage) // << breaks path by parts, animatable
            .stroke(Color.red, style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
            .animation(.easeOut(duration: Double.random(in: 0...3))) // << animate
            .onAppear {
                self.percentage = 1.0 // << activates animation for 0 to the end
            }
            
            Path { path in
                path.move(to: CGPoint(x: 300, y: 300))
                path.addLine(to: CGPoint(x: 300, y: 600))
                path.addLine(to: CGPoint(x: 100 , y: 650))
                path.addLine(to: CGPoint(x: 100, y: 700))
            }
            .trim(from: 0, to: percentage2) // << breaks path by parts, animatable
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
            .animation(.easeOut(duration: 0.8)) // << animate
            .onAppear {
                self.percentage2 = 1.0 // << activates animation for 0 to the end
            }
            
            Path { path in
                path.move(to: CGPoint(x: 350, y: 300))
                path.addLine(to: CGPoint(x: 350, y: 250))
                path.addLine(to: CGPoint(x: 150 , y: 150))
                path.addLine(to: CGPoint(x: 150, y: 20))
            }
            .trim(from: 0, to: percentage3) // << breaks path by parts, animatable
            .stroke(Color.purple, style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
            .animation(.easeOut(duration: 1.2)) // << animate
            .onAppear {
                self.percentage3 = 1.0 // << activates animation for 0 to the end
            }
            Path { path in
                path.move(to: CGPoint(x: 150, y: 500))
                path.addLine(to: CGPoint(x: 150, y: 400))
                path.addLine(to: CGPoint(x: 400 , y: 200))
                path.addLine(to: CGPoint(x: 400, y: 100))
            }
            .trim(from: 0, to: percentage4) // << breaks path by parts, animatable
            .stroke(Color.green, style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
            .animation(.easeOut(duration: Double.random(in: 0...3))) // << animate
            .onAppear {
                self.percentage4 = 1.0 // << activates animation for 0 to the end
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
