//
//  ProductCard.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import SwiftUI

struct ProductCard: View {
    
    let product:GetProducts.DatumItem
    
    
    init(product: GetProducts.DatumItem) {
        self.product = product
        if product.images!.count == 1 {
            image=product.images![0]
        }
    }
    
    private var image="";
    var body: some View {
        HStack{
            NetworkImage(image: image , height: 70, width: 70)
            Text(product.name!).bold()
            Spacer()
            Button(action: {}, label: {
                Text("+")
            })
        }
    }
}
