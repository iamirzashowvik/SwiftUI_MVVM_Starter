//
//  ProductCard.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import SwiftUI

struct ProductCard: View {
    @Environment(\.managedObjectContext) var managedObject
           @Environment(\.dismiss) var dismiss
    

    let product:GetProducts.DatumItem
    
    
    init(product: GetProducts.DatumItem) {
        self.product = product
        if product.images!.count == 1 {
            image=product.images![0]
        }
    }
    
    
//    var productCore:FetchedResults<Product>.Element
    
    private var image="";
    
    
    @State private var incart:Int16=0
    
    
    var body: some View {
        HStack{
            NetworkImage(image: image , height: 70, width: 70)
            Text(product.name!).bold()
            Spacer()
            if incart > 0 {
                Text("\(incart)")
            }
            Button(action: {}, label: {
                Text("+")
            }).onTapGesture {
                incart += 1
                CartController().addProduct(name:product.name!, price: Float(product.price!.amount!),id: product.id! , quantity: incart, context: managedObject);
                dismiss()
                                      
            }
        }
    }
}
