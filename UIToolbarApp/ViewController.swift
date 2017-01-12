//
//  ViewController.swift
//  UIToolbarApp
//
//  Created by Shrawan Shinde on 22/12/16.
//  Copyright © 2016 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
        
        view.backgroundColor = UIColor.lightGray
        
        
        //Toolbar 1
        let toolbar1 = UIToolbar()
        toolbar1.sizeToFit()
        toolbar1.center = CGPoint(x: view.frame.width/2, y: 50)
        toolbar1.backgroundColor = UIColor.gray
        
        //Align Right
        let spaceInLeft = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: self, action: nil)
        let searchButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: "searchTapped")
        toolbar1.items = [spaceInLeft, searchButton]
        
        
        //Toolbar 2
        let toolbar2 = UIToolbar()
        toolbar2.sizeToFit()
        toolbar2.center = CGPoint(x: view.frame.width/2, y: 100)
        toolbar2.backgroundColor = UIColor.gray
        
        //Align Left
        let cancelButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: self, action: "cancelTapped")
        toolbar2.items = [cancelButton]
        
        
        //Toolbar 3
        let toolbar3 = UIToolbar()
        toolbar3.sizeToFit()
        toolbar3.center = CGPoint(x: view.frame.width/2, y: 150)
        toolbar3.backgroundColor = UIColor.gray
        
        //Align Left and Right
        let closeButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.stop, target: self, action: "closeTapped")
        let addButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: "addTapped")
        toolbar3.items = [addButton, spaceInLeft, closeButton]
        
        view.addSubview(toolbar2)
        view.addSubview(toolbar1)
        view.addSubview(toolbar3)
    }
    
    
    func cancelTapped() {
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "cancel Button Clicked";
        alertView.show();
    }
    
    func searchTapped() {
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "search Button Clicked";
        alertView.show();
    }
    
    func addTapped() {
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "Add Button Clicked";
        alertView.show();
    }
    
    func closeTapped() {
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "Close Button Clicked";
        alertView.show();
    }
    
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

