//
//  UIViewController.swift
//  NewsDemo
//
//  Created by AnupamG on 09/07/21.
//

import UIKit

extension UIViewController{
    
    func showAlert(title:String,message:String,cancelHandler: (() -> Swift.Void)? = nil){
        let myalert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        myalert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction!) in
            print("Cancel")
            cancelHandler?()
        })
        self.present(myalert, animated: true)
    }
}
