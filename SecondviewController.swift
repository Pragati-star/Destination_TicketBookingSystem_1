//
//  SecondviewController.swift
//  Anjali project final
//
//  Created by Student on 16/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit
class SecondviewController: UIViewController {
    var email: String!
    var password: String!
    var welcome: String!
    @IBOutlet weak var emaillbl: UITextField!
    @IBOutlet weak var passwdlbl: UITextField!
    @IBOutlet weak var wlcmlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wlcmlbl.text = "welcome \(welcome!)"
        emaillbl.text = email!
        passwdlbl.text = password!
    }
    @IBAction func loginbtn(_ sender: Any) {
        if emaillbl.text != ""{
            performSegue(withIdentifier: "sourcesegue", sender: nil)
        }
        if passwdlbl.text != ""{
            performSegue(withIdentifier: "sourcesegue", sender: nil)
        }
    }
    
    @IBAction func signbutton(_ sender: Any) {
        performSegue(withIdentifier: "goback", sender: nil)
    }
    
}
