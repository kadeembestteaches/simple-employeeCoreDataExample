//
//  EmployeeDisplayViewController.swift
//  practiceCoreData
//
//  Created by Kadeem Best on 2020-05-21.
//  Copyright © 2020 ios. All rights reserved.
//

import UIKit

class EmployeeDisplayViewController: UIViewController {

    
    @IBOutlet weak var lblName: UILabel!
    
    var employeeName:String="";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = employeeName;

        
    }
    


}
