//
//  ViewController.swift
//  silgilator
//
//  Created by Michel Ortega on 6/4/18.
//  Copyright © 2018 Michel Ortega. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 
  //MARK: IBOutlet's
  @IBOutlet var dateLabel: UILabel!
  @IBOutlet var todoTextFieldText: UITextField!
  
  //MARK: Properties
  let year = Calendar.current.component(.year, from: Date())
  let month = Calendar.current.component(.month, from: Date())
  let date = Calendar.current.component(.day, from: Date())
  
  var todo: String = " "
  
  //MARK: Views Start
  override func viewWillAppear(_ animated: Bool) {
    
  }
  
  override func viewDidLoad() {
    
    dateLabel.text = "\(Calendar.current.shortMonthSymbols[month - 1]) \(date) \(year)"
    todoTextField(self)
    todoTextFieldText.delegate = self
    
  }
  
  //MARK: IBActions
  @IBAction func todoTextField(_ sender: Any) {
    todoTextFieldText.clearsOnBeginEditing = true
    
    if(todoTextFieldText.isEditing){
      todo = todoTextFieldText.text ?? " "
      
    }
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool{
  
    textField.resignFirstResponder()
    return true
  }
} // ViewController ends
