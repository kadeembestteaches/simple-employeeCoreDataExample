//
//  ViewController.swift
//  practiceCoreData
//
//  Created by Kadeem Best on 2020-05-21.
//  Copyright © 2020 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnSave(_ sender: Any)
    {
    
        let myContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let employee = Employee (context: myContext);
        
        employee.firstName=txtLastName.text!;
        employee.lastName=txtLastName.text!;
        employee.email=txtEmail.text!;
        
        do
        {
            try myContext.save();
            print("Employee Save");
        }
        
        catch
        {
            print("Cannot Save employee")
        }
        
       

    
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print(txtFirstName.text!);
        print(txtLastName.text!);
        
        if segue.destination is EmployeeDisplayViewController
        {
            let edvc =  segue.destination as? EmployeeDisplayViewController
            
            edvc?.employeeName = "\(txtFirstName.text!) \(txtLastName.text!)";
        
        }

    }
}

