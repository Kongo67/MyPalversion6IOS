//
//  ViewController.swift
//  MyPalversion6
//
//  Created by auc on 19/07/2022.
//

import UIKit
import FirebaseDatabase
class ViewController: UIViewController {

    @IBOutlet weak var DogType: UITextField!
    @IBOutlet weak var Where: UITextField!
    @IBOutlet weak var When: UITextField!
    
    
    var ref: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        DogType.delegate = self
        Where.delegate = self
        When.delegate = self
        ref = Database.database().reference()
// Do any additional setup after loading the view.
    }

    @IBAction func OnClickReport(_ sender: Any) {
        self.ref.child("Report").childByAutoId().setValue(["typeDog":DogType.text,"WhereDog":Where.text,"WhenDog":When.text])

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        DogType.resignFirstResponder()
    }
    

    

}

extension ViewController : UITextFieldDelegate{
    func textFieldShouldreturn(_ textField: UITextField) -> Bool{
        
        textField.resignFirstResponder()
        return true
    }
}



