//
//  TimerPracticeView.swift
//  2025.06.30
//
//  Created by 최용헌 on 7/1/25.
//

import SwiftUI


struct TimerPracticeView: View {
  @State var timerData: TimerData = TimerData()
  
    var body: some View {
      NavigationStack {
        VStack(spacing: 20) {
          Text("Timer count = \(timerData.timeCount)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
          
          Button {
            resetCout()
          } label: {
            Text("Reset Counter")
          }
          
          NavigationLink(destination: SecondTimerView()) {
            Text("두번째 화면")
          }
        }
      }
    }
  
  func resetCout(){
    timerData.resetCount()
  }
}

#Preview {
    TimerPracticeView()
}
