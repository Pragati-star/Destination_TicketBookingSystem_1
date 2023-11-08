//
//  FourViewController.swift
//  Anjali project final
//
//  Created by Student on 16/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//
import UIKit

class FourViewController: UIViewController {
    
//    var rate: String = " "
    var sourses1: String!
    var destinationd1: String!
    var ticprice: Int32!
//    var passengerName: String!
//    var passengerAge: Int!
    @IBOutlet weak var sourcelbl: UITextField!
    @IBOutlet weak var destinationlbl: UITextField!
    @IBOutlet weak var pricelbl: UITextField!
    @IBOutlet weak var pnamelbl: UITextField!
    
    @IBOutlet weak var pagelbl: UITextField!
    @IBOutlet weak var seatsegmentText: UILabel!
    @IBOutlet weak var seatSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imgvew = UIImageView(frame: CGRect(x: 0, y: 0,width: 500, height: 300))
        imgvew.contentMode = .scaleAspectFill
        imgvew.clipsToBounds = true
        imgvew.image = UIImage(named: "W1")
        view.addSubview(imgvew)
        sourcelbl.text = sourses1!
        destinationlbl.text = destinationd1!
        pricelbl.text = "\(ticprice!)"
        
        seatsegmentText.text = "Ac"
    }
    
    @IBAction func Exit(_ sender: Any) {
        performSegue(withIdentifier: "exit", sender: nil)
    }
    
    @IBAction func seatSegmentAction(_ sender: Any) {
        switch seatSegment.selectedSegmentIndex {
        case 0:
            seatsegmentText.text = "Ac"
        case 1:
            seatsegmentText.text = "Non Ac"
        default:
            break
        }
    }
    @IBAction func bookseat(_ sender: Any) {
        let alert = UIAlertController(title: "Welcome", message: "Do You want to confirm your seat", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Cancel", style: .cancel, handler: {(action) in
            self.performSegue(withIdentifier: "exit", sender: self)
           
        }))
        alert.addAction(UIAlertAction(title:"Confirm", style: .default, handler: {(action) in
            self.performSegue(withIdentifier: "5th", sender: self)
        }))

        present(alert, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "5th" {
            let destObj = segue.destination as! FifthViewController
            destObj.name = pnamelbl.text!
            destObj.age = pagelbl.text!
            destObj.type = seatsegmentText.text!
            
        }
    }
}

