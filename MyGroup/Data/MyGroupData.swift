//
//  MyGroupData.swift
//  MyCalc
//
//  Created by 최용헌 on 6/27/25.
//

import Foundation

struct Person: Identifiable {
  var id = UUID()
  let name: String
  let mbti: String
  let hobby: String
}

let persons: [Person] = [
  Person(name: "경준환", mbti: "INTP", hobby: "게임"),
  Person(name: "임종혁", mbti: "ESTP", hobby: "볼링"),
  Person(name: "최용헌", mbti: "INTJ", hobby: "운동")
]
