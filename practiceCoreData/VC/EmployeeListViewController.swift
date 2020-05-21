//
//  EmployeeListViewController.swift
//  practiceCoreData
//
//  Created by Kadeem Best on 2020-05-21.
//  Copyright © 2020 ios. All rights reserved.
//

import UIKit
import CoreData;

class EmployeeListViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var employees : [Employee] = [Employee]();
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeList");
        
        cell?.textLabel?.text = employees[indexPath.row].firstName;
        
        return cell!;

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext;
        
        
        let request : NSFetchRequest<Employee> = Employee.fetchRequest()
        
        do {
            self.employees = try myContext.fetch(request)
        }
        catch {
            print("error!")
        }
     
        for employee in self.employees
        {
            print(employee.firstName!)
        }
        
        
    }
    

  

}
