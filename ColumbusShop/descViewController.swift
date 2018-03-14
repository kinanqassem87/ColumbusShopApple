//
//  descViewController.swift
//  ColumbusShop
//
//  Created by Mahmoud Harfouche on 3/14/18.
//  Copyright © 2018 Columbus. All rights reserved.
//

import UIKit

class descViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    var itemchoose="0"
    @IBOutlet weak var tbldesc: UITableView!
    var i2962_3=Array<itemobject>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbldesc.dataSource=self
        tbldesc.delegate=self
        
        
        i2962_3.append(itemobject(itemimg: "2962_1", itembarcode: "i2962_1"))
        i2962_3.append(itemobject(itemimg: "2962_2", itembarcode: "i2962_2"))
        i2962_3.append(itemobject(itemimg: "2962_3", itembarcode: "i2962_3"))
        i2962_3.append(itemobject(itemimg: "2962_4", itembarcode: "i2962_4"))
        
        
       // print(itemchoose)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    //need if
        var count=0
        if(itemchoose=="i2962_3"){
            count=i2962_3.count
        }
        return count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:itemTableViewCell=tableView.dequeueReusableCell(withIdentifier: "celldesc", for: indexPath) as! itemTableViewCell
        
        //need if
        if(itemchoose=="i2962_3"){
        cell.barcodedesc.text=i2962_3[indexPath.row].itembarcode!
            cell.imgdesc.image=UIImage(named:i2962_3[indexPath.row].itemimg!)
        }
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
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
