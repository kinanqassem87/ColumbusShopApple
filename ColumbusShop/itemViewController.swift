//
//  itemViewController.swift
//  ColumbusShop
//
//  Created by Mahmoud Harfouche on 3/14/18.
//  Copyright © 2018 Columbus. All rights reserved.
//

import UIKit

class itemViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var itemchoose="0"
    var Boots=Array<itemobject>()
    
    @IBOutlet weak var tblitem: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblitem.dataSource=self
        tblitem.delegate=self
        
        Boots.append(itemobject(itemimg: "2962_3", itembarcode: "i2962_3"))
        
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
        if(itemchoose=="Boots"){
            count=Boots.count
        }
        
        
        return count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:itemTableViewCell=tableView.dequeueReusableCell(withIdentifier: "cellitem", for: indexPath) as! itemTableViewCell
        
        //need if
        if(itemchoose=="Boots"){
        cell.lbbarcode.text=Boots[indexPath.row].itembarcode!
            cell.itemimg.image=UIImage(named:Boots[indexPath.row].itemimg!)
        }
        
        
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //need if
        if(itemchoose=="Boots"){
        performSegue(withIdentifier: "showdesc", sender: Boots[indexPath.row].itembarcode)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dis=segue.destination as? descViewController{
            if let item=sender as? String {
                dis.itemchoose=item
            }
        }
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
