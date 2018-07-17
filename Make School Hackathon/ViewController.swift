//
//  ViewController.swift
//  Make School Hackathon
//
//  Created by Emily Lam on 7/16/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! UsernameCell
        switch indexPath.row {
        case 0:
            cell.logoImageView.image = #imageLiteral(resourceName: "snap-ghost-yellow")
            cell.companyTitle.text = "Snapchat"
            //set to something later
            
        case 1:
            cell.logoImageView.image = #imageLiteral(resourceName: "InstagramLogo")
            cell.companyTitle.text = "Instagram"
            
        case 2:
            cell.logoImageView.image = #imageLiteral(resourceName: "facebookLogo")
            cell.companyTitle.text = "Facebook"
            
        case 3:
            cell.logoImageView.image = #imageLiteral(resourceName: "twitterLogo")
            cell.companyTitle.text = "Twitter"
            
        case 4:
            //cell.logoImageView.image =
            cell.companyTitle.text = "LinkedIn"
            
        default:
            cell.logoImageView.image = #imageLiteral(resourceName: "snap-ghost-yellow")
            cell.companyTitle.text = "Snapchat"
        }
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
}

