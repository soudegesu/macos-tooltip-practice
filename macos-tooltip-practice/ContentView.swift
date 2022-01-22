//
//  ContentView.swift
//  macos-tooltip-practice
//
//  Created by soudegesu on 2022/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(spacing: 30) {
        Button("button1", action: {
          
        })
        .help("This is tooltip on macOS")
        Button("button2", action: {
          
        }).toolTip("This is custom tooltip")
      }.frame(width: 480, height: 360, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
