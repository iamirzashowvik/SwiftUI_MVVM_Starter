//
//  ProductCard.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import SwiftUI

struct ProductCard: View {
    var body: some View {
        HStack{
            NetworkImage(image: nil,height: 70, width: 70)
            Text("Product Name").bold()
            Spacer()
            Button(action: {}, label: {
                Text("+")
            })
        }
    }
}
