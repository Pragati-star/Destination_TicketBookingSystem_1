//
//  FifthViewController.swift
//  Anjali project final
//
//  Created by Guest on 01/11/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var lblage: UILabel!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblpnr: UILabel!
    @IBOutlet weak var lblSeatNo: UILabel!
    
    var name: String = ""
    var age: String = ""
    var type: String = ""
   // var pnr: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblname.text = name
        lblage.text = age
        lblType.text = type
        //lblpnr.text = pnr
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getTicket(_ sender: Any) {
//        let alert = UIAlertController(title: "Welcome", message: "Ticket Details", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title:"Cancel", style: .cancel, handler: nil))
        //lblpnr.text = pnr
        let randompnrNumber = Int.random(in: 1234567...9999999)
        lblpnr.text = "\(randompnrNumber)"
//
        let randowmseatNumber = Int.random(in: 01...79)
        lblSeatNo.text = "\(randowmseatNumber)"
        let alertTitle = "Ticket deatils"
        let message = "Name: \(name) \n age: \(age) \n Seat Type:\(type) \n Pnr No: \(randompnrNumber) \n Seat No: \(randowmseatNumber)"
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Go Back", style: .destructive, handler: {(action) in self.performSegue(withIdentifier: "last", sender: nil)}))
        
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
//        self.present(alert, animated: true, completion: nil)
    }
        
    
    
}

