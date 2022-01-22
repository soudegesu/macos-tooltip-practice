//
//  ContentView.swift
//  macos-tooltip-practice
//
//  Created by soudegesu on 2022/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var isShowPopover = false
  
    var body: some View {
        VStack(spacing: 30) {
            Button("button1", action: {
              
            })
            .help("This is tooltip on macOS")

            Button("button2", action: {
              
            })
            .onHover(perform: { hovering in
              isShowPopover = hovering
            })
            .popover(isPresented: $isShowPopover, attachmentAnchor: .point(.bottom), arrowEdge: .bottom) {
              Text("This is popover")
                .padding(10)
            }
        }
        // Need at least 1 space
        .padding(.bottom, 1)
        .frame(width: 480, height: 360, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
