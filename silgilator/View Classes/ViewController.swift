//
//  ViewController.swift
//  silgilator
//
//  Created by Michel Ortega on 6/4/18.
//  Copyright © 2018 Michel Ortega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
  @IBOutlet var dateLabel: UILabel!
  
  let year = Calendar.current.component(.year, from: Date())
  let month = Calendar.current.component(.month, from: Date())
  let date = Calendar.current.component(.day, from: Date())
//
  
  override func viewWillAppear(_ animated: Bool) {
    
  }
  
  override func viewDidLoad() {
    
    dateLabel.text = "\(Calendar.current.shortMonthSymbols[month - 1]) \(date) \(year)"
    
  }
  
}

