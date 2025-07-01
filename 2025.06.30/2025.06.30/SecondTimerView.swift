//
//  SecondTimerView.swift
//  2025.06.30
//
//  Created by 최용헌 on 7/1/25.
//

import SwiftUI
import Foundation

struct SecondTimerView: View {
  @Environment(TimerData.self) var timerData
  
    var body: some View {
      VStack{
        Text("Second View")
          .font(.largeTitle)
        
        Text("Timer Count = \(timerData.timeCount)")
          .font(.headline)
          .padding()
      }
    }
}

#Preview {
  SecondTimerView()
    .environment(TimerData())
}
