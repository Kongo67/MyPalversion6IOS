//
//  TableViewController.swift
//  MyPalversion6
//
//  Created by auc on 19/07/2022.
//

import UIKit
import FirebaseDatabase

class TableViewController: UIViewController {
    var ref = DatabaseReference.init()
    var arrdata = [Dog]()
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.getAllFIRData()
//        ref = Database.database().reference()
        
        
        // Do any additional setup after loading the view.
    }
    
    func getAllFIRData(){
        self.ref.child("Dog").queryOrderedByKey().observe(.value) { (snapshot) in
            self.arrdata.removeAll()
            if let snapShot = snapshot .children.allObjects as? [DataSnapshot]{
                for snap in snapShot{
                    if let mainDict = snap.value as? [String: AnyObject]{
                        let DogName = mainDict["dogName"] as? String// check name if fails
                        let DogType = mainDict["dogType"] as? String
                        let DogAge = mainDict["dogAge"] as? Int
                        let DogDescription = mainDict["dogDescription"] as? String
                        let DogFound = mainDict["dogFound"] as? String
                        let DogID = mainDict["dogId"] as? String
                        let Dimage = mainDict["dimage"] as? String ?? ""
                        self.arrdata.append(Dog(DogName: DogName!, DogType: DogType!, DogDescription: DogDescription!, DogAge: DogAge!, DogID: DogID!, DogFound: DogFound!, Dimage: Dimage))
                        self.tableview.reloadData()
                    }
                }
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
extension TableViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.dogmodel = arrdata[indexPath.row]
        return cell
    }
}
