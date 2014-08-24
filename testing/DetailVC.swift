//
//  DetailVC.swift
//  TableViewTest
//
//  Created by David Owens on 8/23/14.
//  Copyright (c) 2014 David Owens. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    //Our label for displaying var "items/cellName"
    @IBOutlet var cellNameLabel: UILabel!
    @IBOutlet var cellDetailLabel: UILabel!
    @IBOutlet var cellSubmittedLabel: UILabel!
    
    //Receiving variable assigned to MainVC's var "items"
    var cellName:String = ""
    var cellDesc:String = ""
    var cellSubm:String = ""
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder:aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign your UILabel text to your String
        cellNameLabel.text = cellName
        cellDetailLabel.text = cellDesc
        cellSubmittedLabel.text = cellSubm 
        
        //Assign String var to NavBar title
        self.title = cellName
        
        cellDetailLabel.numberOfLines = 0
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
