//
//  secondViewController.swift
//  iosDay2
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img1.image = UIImage(named: "lion")
        // Do any additional setup after loading the view.
        img1.image = #imageLiteral(resourceName: "ice cream.png")
        img1.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
    }
    
    @IBAction func segmentImageChange(_ sender: UISegmentedControl) {
        var imageName = String()
        switch sender.selectedSegmentIndex {
        case 0:
            imageName = "elephant"
        case 1:
            imageName = "gorilla"
        case 2:
            imageName = "home"
        case 3:
            imageName = "ice cream"
        case 4:
            imageName = "lion"
        default:
            print("no image selected")
        }
        self.img1.image = UIImage(named: imageName)
    }
    
    @IBAction func slider(_ sender: UISlider) {
        //print(Int(sender.value))
        let n = Int(sender.value)
        display(index:n)
    }
    private func display(index:Int)
    {
         var imageName = String()
               switch index {
               case 0:
                   imageName = "elephant"
               case 1:
                   imageName = "gorilla"
               case 2:
                   imageName = "home"
               case 3:
                   imageName = "ice cream"
               case 4:
                   imageName = "lion"
               default:
                   print("no image selected")
               }
               self.img1.image = UIImage(named: imageName)    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
