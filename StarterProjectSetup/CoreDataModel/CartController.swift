

import Foundation
import CoreData
import SwiftUI


class CartController : ObservableObject{
    
    let container    = NSPersistentContainer(name: "CartModel")
    
    init() {
        container.loadPersistentStores{ desc, error in
            if let error = error {
                 print("Failed to load data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context:NSManagedObjectContext){
        do{
            try context.save();
            print("Data saved")
           
        } catch{
            print("Error on data saving")
        }
    }
    
    
    func addProduct(name:String, price:Float, id:String, quantity:Int16, context:NSManagedObjectContext){
        
        let product = ProductCart(context: context);
        
        product.name = name
        product.price = price
        product.quantity = quantity
        product.id = id
      
        save(context: context)
    }
    
    func addToCart(quantity:Int16, context:NSManagedObjectContext,product:ProductCart){
        product.quantity =  quantity
        save(context: context)
    }
    
    
    
}
