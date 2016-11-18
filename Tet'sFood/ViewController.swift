//
//  ViewController.swift
//  Tet'sFood
//
//  Created by QUYNV on 11/17/16.
//  Copyright © 2016 QUYNV. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataManager = DataManager.sharedInstance
    var detailVC : DetailVC!
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        let monAn = dataManager.data[indexPath.item] as! MonAn
        cell.kCellWidth = self.view.frame.size.width
        cell.addSubview()
        cell.imgViewCell.image = monAn.photo
        cell.nameLabel.text = monAn.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            dataManager.data.remove(indexPath : indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        
        let monAn = dataManager.data[indexPath.item] as! MonAn

        detailVC.name = monAn.name!
        detailVC.des = monAn.description!
        detailVC.img = monAn.photo!
        present(detailVC, animated: true, completion: nil)
    }
    

}

