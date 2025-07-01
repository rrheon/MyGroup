//
//  TimerData.swift
//  2025.06.30
//
//  Created by 최용헌 on 7/1/25.
//

import Foundation
import Combine

@Observable class TimerData: ObservableObject {
  var timeCount: Int = 0
  var timer: Timer?
  
  init(){
    timer = Timer.scheduledTimer(timeInterval: 1.0,
                                 target: self,
                                 selector: #selector(timerDidFire),
                                 userInfo: nil,
                                 repeats: true)
  }
  
  @objc func timerDidFire(){
    timeCount += 1
  }
  
  func resetCount() {
    timeCount = 0
  }
}
