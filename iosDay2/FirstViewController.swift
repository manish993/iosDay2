//
//  ViewController.swift
//  iosDay2
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var textbox1: UITextField!
    @IBOutlet weak var textbox2: UITextField!
    
    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func textbox1(_ sender: Any)
    {
        print(textbox1.text!)
    }
    @IBAction func textbox2(_ sender: Any)
    {
        print(textbox2.text!)
    }
    
    @IBAction func Button1(_ sender: Any)
    {
       lb1.text=textbox2.text
        lb1.textColor=UIColor.red
    }
    @IBAction func showAlert(_ sender: UIButton) {
        if sender.tag == 0
        {
        let alertController = UIAlertController(title: "Congratulations!", message:
            "You signed in", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alertController.addAction(UIAlertAction(title: "ok", style: .default))
       // alertController.addAction(UIAlertAction(title: "Press", style: .destructive))
      //  alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(alertController, animated: true, completion: nil)
        }
        if sender.tag == 1
        {
           let alertController = UIAlertController(title: "Congratulations!", message:
                "You signed in", preferredStyle: .actionSheet)
            alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            alertController.addAction(UIAlertAction(title: "ok", style: .default, handler:{(sender) in print("ok clicked")} ))
           // alertController.addAction(UIAlertAction(title: "Press", style: .destructive))
           // alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            self.present(alertController, animated: true, completion: nil)        }}
        
}

