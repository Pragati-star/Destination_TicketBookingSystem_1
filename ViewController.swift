//
//  ViewController.swift
//  Anjali project final
//
//  Created by Student on 16/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    
    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var emailfield: UITextField!
    
    @IBOutlet weak var phonefield: UITextField!
    
    @IBOutlet weak var passwordfield: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var confirmpasswordfield: UITextField!
    
    override func viewDidLoad() {
        namefield.delegate = self
        emailfield.delegate = self
        phonefield.delegate = self
        passwordfield.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let gradient = CAGradientLayer()
//        gradient.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
//        gradient.locations = [0.0 ,1.0]
//        gradient.startPoint = CGPoint(x: 0.0,y: 0.0)
//        gradient.endPoint = CGPoint(x: 1.0,y: 1.0)
//        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
//        self.view.layer.insertSublayer(gradient, at: 0)
//        
//    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == namefield{
            emailfield.becomeFirstResponder()
        }
        else if textField == emailfield{
            textField.resignFirstResponder()
        }
        return true
    }
    @IBAction func signupbtn(_ sender: Any) {
        if namefield.text != "" {
            performSegue(withIdentifier: "2nd", sender: nil)
        }
        if emailfield.text != ""{
            performSegue(withIdentifier: "2nd", sender: nil)
        }
        if passwordfield.text != ""{
            performSegue(withIdentifier: "2nd", sender: nil)
        }
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "2nd"{
            
    let destObj = segue.destination as! SecondviewController
            destObj.welcome = namefield.text
            destObj.email = emailfield.text
            destObj.password = passwordfield.text
        }
        
    }
   
}


