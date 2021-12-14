//
//  ColorButtonMenuView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 14/12/21.
//

import SwiftUI

struct ColorButtonMenuView: View {
    private var opcionSeleccionada: Int = 1
    
    private var selectedColor:Color = .basePrussianBlue
    
    private var colors:[Color] = [
        .basePrussianBlue,
        .orange,
        .black,
        .red,
        .green,
        .purple,
        .gray
    ]
    
    var body: some View {
        HStack{
            ForEach(0..<colors.count){index in
                Button(action:{}){
                    ZStack{
                        Circle()
                            .strokeBorder(Color.gray,lineWidth:1)
                            .foregroundColor(.white)
                            .frame(width:25,height: 25)
                        Circle()
                            .foregroundColor(colors[index])
                            .frame(width:20,height: 20)
                        Image("checkmark-selector")
                            .resizable()
                            .renderingMode(.template)
                            .opacity(self.opcionSeleccionada==index ? 1 : 0)
                            .frame(width:12,height:12)
                            .foregroundColor(.white)
                    }
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ColorButtonMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonMenuView()
    }
}
