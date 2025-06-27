//
//  Friend.swift
//  MyFriends
//
//  Created by Jongwook Park on 6/27/25.
//

import Foundation

// Identifiable 프로토콜을 따르면
// List 같은 곳에서 구별된 항목들로 잘 처리해준다

/*
 Friend의 구조체를 여러분의 관심사대로 더 고치고 프로퍼티도 1개 이상 추가해봅시다
 친구들 목록도 새롭게 만듭시다
 화면에 List로 항목들이 다 잘 나타나도록 만듭시다
 
 */


/// 이미지
enum ConstantImage {
  static let starImage = "star.fill"
  static let attackoftitian = "https://i.namu.wiki/i/D10U8xJoomWPmda55-aDS0qaxGwG9s0dt3YgvLgjWRHUw660GdUqQc0Z5x7Sx5YMK5C9yipche-mSBm3J2oPoJXWx_XKYB113JLMIw18mqwqXuQJ03XlPvzQmd6ksKLPS2n3eqIZCeszH2fBIXIXmQ.webp"
  static let animalTitian = "https://i.namu.wiki/i/q6KrxNjHRs9dljeALdqxWu9d11RxNwVBW2V_3z0yRjtARdgrhFCS_Je2VGFcxeLFKboHo--5qUYrS4XTEVCVm_nBsErJY8VTpdvwgO68vN5rNlSDXhda6Xbo9HGS_ammlWqkEZMmaW9Cwwf8gfLuQQ.webp"
  
  static let femailTitian = "https://i.namu.wiki/i/sPBsgMfCWnYCKIiA5rdZjxjLZoU7s8rrL2H2pL3xhY2iHUyI_J2Tsu96aPN3OJ_OihQ1G4DkboPXqSZB2S8aMOjfnMPN5M0OsMTUyEylC6D2Hvm6quIr-Zb1QU3x4T4gXj2noK0tN7TCaT21TGfr_g.webp"
  
  static let armoredTitian = "https://i.namu.wiki/i/M-L3ktzKOvRCtvxvRe7bAQAZBQ4oLGL35K5uJ2bAKSXG2rbcPSyieUyaMBNl09kPQMSkaIAhVVR_rUDJJdxHPFEwGqwuogOvi-qXUGd0cHe48LViC49ewi8bC8cZeS96CVu4lx7qmnN0dpHLBpNjYg.webp"
  
  static let colossalTitian = "https://i.namu.wiki/i/_ntSuPMnILqyZevGVjvuXyy3_gvY0Wi82aRo_BpIAeOLVxvE1rf90Q1mOUTW1-zwzWcufepuioOXwqB9Jv-6yDrHN_FTwYomeH5byMTrzec-CeqGgrMIohY8ixGY06QdW-367atSNKYV7VQvaOixBg.webp"
  
  static let jawTitan = "https://i.namu.wiki/i/W4GzX4tIX7HNCndgDUtaqEMgKPn3a2s4_8FaxzCa3SbZ8yiGMFs-wtd1oRs6FL4LY5XhljrFmTcJiFYvr4qXLNLzQv24qYJb7jQlrKm9QoBXq_S9O55PahyMcIoMML5f4O4k8XPMnFvKtqGiBRJjSQ.webp"
  
  static let cartTitan = "https://i.namu.wiki/i/uZ5CWdhxZ9_pSbsIv6paOZhwxhoeV3-1NZpP1kZZNSnjvRISMccQM2ZBXToBiItbNbq2NbZ4Ju9F9XR3TOkKecPCls2S1O4c0ciLwIMUCG517Ll7qPjzI8uvWGVDG9-1PjywUVzaQHVD7gVr4dE20g.webp"
  
  static let warHammerTitan = "https://i.namu.wiki/i/gJg9Sr6AIdoqtGi2qEzeR0Nwj0IrJIsyCX8Kddu-77Forh0NrdVfudteqAttyrCb0R4EAxYloZ4T4XKPea_VI4T_nx0WhJNtje6Er6SWpSFe0VXJz75Wxuk5yPsVRCOHdei3zp1ry3NH5C5NcPSI4g.webp"
  
  static let foundingTitan = "https://i.namu.wiki/i/c-MfioOaBvi1aV7ljDVZdhGVrMzrAKcvkGS-iG0BL4ldpyHWXJoV0g7zzGlUc8O63O3tQNBcv2m5Pm9gyBdvA5qVB29VmOCiTplYwW4SK0fSVAJpPKQqQRX_wU06gy39AvuOJ0_GpjDMOfURDFlEcg.webp"
  
  static let hange = "https://i1.ruliweb.com/img/23/03/04/186acec827d53acab.jpg"
  static let levi = "https://i.namu.wiki/i/Z-9wFz2e2nstHxBMPqhG5uEuK9vwNz0bO_9sZsxGZQQ3uocKzJXlRRPn_lDfDcYgDl0p3wh7kMPGcvIHB2c22yRHik2kBWN6UWCCz49nme2oO-VSPNdbkYPvJZF82OgLud2zI_hSfoh2j0ZKZOynuw.webp"
  
  static let armin = "https://i.namu.wiki/i/gyAAGFY4iVKU2c0Ni2gcyNOIFM-pF20RPplSCxCqr9Y7wJuETU4jbBDOXP--T6XjgP1G9x8onj0_PaGaCO9hafk4C3ZokvFsMi_B2zQxjvPmHh0391MYYfDGdF8vfNgZkhp6Vg1aP-DASdYLxpKJMQ.webp"
  
  static let mikasa = "https://i.namu.wiki/i/P-h-IP5-2eW--arUXGZcjC5qedIGlmt0kp-lBLlUtWaXg-d3AWf36s5E4LiJ1g2VYx8p8DUBsnV22ZBbwHNN3fqyQJvUGfeLmMbG_GXfoplbVoImv5EwsBfSU6ixRflZx-B3Cz3Qd-hx63suR8rF6Q.webp"
}


struct Friend: Identifiable {
  var id: UUID = UUID()
  var name: String
  var from: String
  var type: String = "무" // 기본값은 '무' (무타입)
  var imageName: String = ""
}

let friends: [Friend] = [
  Friend(name: "에렌 예거", from: "엘디아", type: "진격의 거인", imageName: ConstantImage.attackoftitian),
  Friend(name: "지크 예거", from: "마레", type: "짐승형 거인", imageName: ConstantImage.animalTitian),
  Friend(name: "라이너 브라운", from: "마레", type: "갑옷형 거인", imageName: ConstantImage.armoredTitian),
  Friend(name: "베르톨트 후버", from: "마레", type: "초대형 거인", imageName: ConstantImage.colossalTitian),
  Friend(name: "애니 레온하트", from: "마레", type: "여성형 거인", imageName: ConstantImage.femailTitian),
  Friend(name: "피크", from: "마레", type: "차력 거인", imageName: ConstantImage.cartTitan),
  Friend(name: "포르코 갈리아드", from: "마레", type: "턱 거인", imageName: ConstantImage.jawTitan),
  Friend(name: "율나 필츠", from: "마레", type: "전퇴형 거인", imageName: ConstantImage.warHammerTitan),
  Friend(name: "유미르 프리츠", from: "엘디아", type: "시조의 거인", imageName: ConstantImage.foundingTitan),

  // 인간형
  Friend(name: "한지 조에", from: "조사병단", type: "인간", imageName: ConstantImage.hange),
  Friend(name: "리바이 아커만", from: "조사병단", type: "인간", imageName: ConstantImage.levi),
  Friend(name: "아르민 알레르트", from: "엘디아", type: "초대형 거인", imageName: ConstantImage.armin),
  Friend(name: "미카사 아커만", from: "엘디아", type: "인간", imageName: ConstantImage.mikasa)
]
