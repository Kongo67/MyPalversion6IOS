//
//  Dog.swift
//  MyPalversion6
//
//  Created by auc on 19/07/2022.
//

import Foundation
import UIKit

class Dog{
    var DogName: String?
    var DogType: String?
    var DogDescription: String?
    var DogAge: Int?
    var DogID: String?
    var DogFound: String?
    var Dimage: String?
    
    init (DogName: String, DogType: String, DogDescription: String, DogAge:Int, DogID:String, DogFound:String,Dimage:String){
        self.DogName = DogName
        self.DogType = DogType
        self.DogDescription = DogDescription
        self.DogAge = DogAge
        self.DogID = DogID
        self.DogFound = DogFound
        self.Dimage = Dimage
        
    }
}
