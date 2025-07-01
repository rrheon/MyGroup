//
//  ContentView.swift
//  2025.06.30
//
//  Created by 최용헌 on 6/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
  
      TabView {
        Tab("Received", systemImage: "star.fill") {
          LayoutView()
        }
        
        Tab("Sended", systemImage: "star") {
          TimerPracticeView()

        }
        
      }
    }
}

#Preview {
    ContentView()
      .environment(TimerData())
}
