//
//  soureceViewController.swift
//  Anjali project final
//
//  Created by Guest on 30/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit

class soureceViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var datepicker: UILabel!
    @IBOutlet weak var sourcePicker: UIPickerView!
    @IBOutlet weak var sourcefield: UITextField!
     
    @IBOutlet weak var destinationfield: UITextField!
    let sourceData = ["Delhi","Patna","Punjab","Kolakta","Banglore"]
    let destinationData = ["Patna","Delhi","Punjab","Kolakta","Banglore"]
    
    var sourcepickerView = UIPickerView()
    var destinationpickerView = UIPickerView()
    @IBOutlet weak var destinationPicker: UIPickerView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        //picker overiding
        sourcefield.delegate =   self
        destinationfield.delegate = self
        super.viewDidLoad()
       // sourcePicker.inputView = sourcepickerView
        sourcePicker.delegate = self
        sourcePicker.dataSource = self
        destinationPicker.delegate = self
        destinationPicker.dataSource = self
        sourcePicker.tag = 1
        destinationPicker.tag = 2
        
        //let imgvw = UIImageView(frame: CGRect(x: 0, y: 0,width: 750, height: 1334))
        //imgvw.contentMode = .scaleAspectFill
        //imgvw.clipsToBounds = true
        //let imgvw.image = UIImage(named: "eiffel")
        //view.addSubview(imgvw)
        datePicker.datePickerMode = .dateAndTime
//        datePicker. = .compact
//
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == sourcefield{
            destinationfield.becomeFirstResponder()
        } else if textField == destinationfield{
            textField.resignFirstResponder()
        }
        return true
    }
    
    @IBAction func datepickervaluechanged(_ sender: UIDatePicker) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        let selectDate = dateFormatter.string(from: from: sender.data)
    }
    
    @IBAction func searchbtn(_ sender: Any) {
        pdata = sourcefield.text!
        pdata2 = destinationfield.text!
        if sourcefield.text != "" {
            performSegue(withIdentifier: "sourceseguenextpart", sender: nil)
        }
        if destinationfield.text != "" {
        
            performSegue(withIdentifier: "sourceseguenextpart", sender: nil)
        }
    }
    


    }
    
extension soureceViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch sourcePicker.tag {
        case 1:
            return sourceData.count
        case 2:
            return destinationData.count
        default:
            return 1
        }
//        return sourceData.count
//       return  destinationData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return sourceData[row]
        case 2:
            return destinationData[row]
        default:
            return "Data not Found"
        }
        //return sourceData[row]
//        return destinationData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sourcefield.text = sourceData[row]
        destinationfield.text =  destinationData[row]
    }
}


