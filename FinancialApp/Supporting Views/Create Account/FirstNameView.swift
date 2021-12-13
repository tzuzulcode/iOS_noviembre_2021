//
//  FirstNameView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 13/12/21.
//

import SwiftUI

struct FirstNameView: View {
    @State var firstName = "First Name"
    var body: some View {
        VStack{
            HStack(alignment: .center, spacing: 0){
                Text("First Name")
                    .customFont(.custom(.bold, 14))
                    .foregroundColor(.basePrussianBlue)
                TextField("First Name",text: $firstName)
                    .multilineTextAlignment(.trailing)
                    .customFont(.custom(.medium, 14))
                    .padding(.trailing,0)
            }.padding(.horizontal,0)
        }.frame(height:40)
            .padding(.top,10)
    }
}

struct FirstNameView_Previews: PreviewProvider {
    static var previews: some View {
        FirstNameView()
    }
}
