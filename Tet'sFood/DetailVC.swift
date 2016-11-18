//
//  DetailVC.swift
//  Tet'sFood
//
//  Created by QUYNV on 11/18/16.
//  Copyright © 2016 QUYNV. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblDes: UILabel!
    
    var name : String?
    var img : UIImage?
    var des : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblName.text = name!
        self.lblDes.text = des
        self.imgView.image = img
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
