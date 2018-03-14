//
//  CategoryViewController.swift
//  ColumbusShop
//
//  Created by Mahmoud Harfouche on 3/14/18.
//  Copyright © 2018 Columbus. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var category=["Boots","Jackets","Tactical Waist Bags","Holsters","Gun Slings","Pants","Sleeping Bags","Tactical Sweater","Uniform","Accessories"]

    @IBOutlet weak var tblcategory: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblcategory.dataSource=self
        tblcategory.delegate=self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cellcat", for: indexPath)
        cell.textLabel?.text=category[indexPath.row]
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showitems", sender: category[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dis=segue.destination as? itemViewController{
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
