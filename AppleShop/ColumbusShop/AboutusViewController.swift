//
//  AboutusViewController.swift
//  ColumbusShop
//
//  Created by Mahmoud Harfouche on 3/14/18.
//  Copyright © 2018 Columbus. All rights reserved.
//

import UIKit

class AboutusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnwebsite(_ sender: Any) {
        if let url = URL(string: "https://www.columbus-lb.com") {
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    @IBAction func btnface(_ sender: Any) {
        if let url = URL(string: "https://www.facebook.com/columbuslb") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    @IBAction func btninstagram(_ sender: Any) {
        if let url = URL(string: "https://www.instagram.com/columbus.leb") {
            UIApplication.shared.open(url, options: [:])
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
