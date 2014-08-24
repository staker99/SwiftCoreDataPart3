//
//  AddTaskVC.swift
//  TableViewTest
//
//  Created by David Owens on 8/23/14.
//  Copyright (c) 2014 David Owens. All rights reserved.
//

import UIKit

class AddTaskVC: UIViewController {
    
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtDescription: UITextField!
    @IBOutlet var txtSubmitted: UITextField!
    
    @IBAction func btnAddTask(){
        
        var name: String = txtName.text
        var description: String = txtDescription.text
        var submitted: String = txtSubmitted.text
        taskMgr.addTask(name, desc: description, subm: submitted)
        txtName.text = ""
        txtDescription.text = ""
        txtSubmitted.text = ""
        self.view.endEditing(true)
        
        navigationController.presentingViewController.dismissViewControllerAnimated(true, completion: {})
        
    }
    
    @IBAction func btnCancel(){
        
        navigationController.presentingViewController.dismissViewControllerAnimated(true, completion: {})
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtName.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) ->Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
    
}