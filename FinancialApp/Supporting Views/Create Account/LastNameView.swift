//
//  LastNameView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 13/12/21.
//

import SwiftUI

struct LastNameView: View {
    @State var firstName = "Last Name"
    var body: some View {
        VStack{
            HStack(alignment: .center, spacing: 0){
                Text("Last Name")
                    .customFont(.custom(.bold, 14))
                    .foregroundColor(.basePrussianBlue)
                TextField("Last Name",text: $firstName)
                    .multilineTextAlignment(.trailing)
                    .customFont(.custom(.medium, 14))
                    .padding(.trailing,0)
            }.padding(.horizontal,0)
        }.frame(height:40)
            .padding(.top,10)
    }
}

struct LastNameView_Previews: PreviewProvider {
    static var previews: some View {
        LastNameView()
    }
}
