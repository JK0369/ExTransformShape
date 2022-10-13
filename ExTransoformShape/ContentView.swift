//
//  ContentView.swift
//  ExTransoformShape
//
//  Created by 김종권 on 2022/10/13.
//

import SwiftUI

struct ContentView: View {
  var myTransformation: CGAffineTransform {
    var affineTransform = CGAffineTransform(translationX: 100, y: 30)
    affineTransform = affineTransform.scaledBy(x: 0.7, y: 0.7)
    affineTransform = affineTransform.rotated(by: 45)
    return affineTransform
  }
  
  var body: some View {
    VStack {
      Group {
//        ScaledShape(shape: Rectangle(), scale: CGSize(width: 0.7, height: 0.7))
//        Divider()
//        RotatedShape(shape: Rectangle(), angle: Angle(degrees: 45))
//        Divider()
//        OffsetShape(shape: Rectangle(), offset: CGSize(width: 100, height: 30))
//        Divider()
        TransformedShape(shape: Rectangle(), transform: myTransformation)
      }
      .foregroundColor(.blue)
      .frame(width: 100, height: 100)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
