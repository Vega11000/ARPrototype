//
//  ControlButtonBar.swift
//  ARPtorotype
//
//  Created by Kaligula on 08.01.2022.
//

import SwiftUI

struct ControlButtonBar: View {
    
    @Binding var showBrowse: Bool
    
    var body: some View {
        HStack {
            ControlButton(systemIcon: "clock.fill") {
                print("button 1 pressed")
            }

            Spacer()
            
            ControlButton(systemIcon: "square.grid.2x2") {
                self.showBrowse.toggle()
            }.sheet(isPresented: $showBrowse) {
                BrowseView(showBrowse: $showBrowse)
            }
            
            Spacer()
            
            ControlButton(systemIcon: "slider.horizontal.3") {
                print("button 3 pressed")
            }

        }
        .frame(maxWidth: 500)
        .padding(30)
        .background(.black
                        .opacity(0.25))
    }
}

struct ControlButtonBar_Previews: PreviewProvider {
    static var previews: some View {
        ControlButtonBar(showBrowse: Binding.constant(false))
            .previewLayout(.sizeThatFits)
    }
}
