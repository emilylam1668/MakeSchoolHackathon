//
//  QRViewController.swift
//  Make School Hackathon
//
//  Created by Emily Lam on 7/16/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

extension UIView {
    
    func snapshotImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 0.0)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let resultingImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return resultingImage!
    }
}

class QRViewController: UIViewController {
    
    @IBOutlet weak var screenshotView: UIView!
    
    var socialMedia: [SocialMedia] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //first put the social media handles and user info stuff in the screenshotView, either in code or in the storybaord builder
        updateUI()
        
        //then, get the UIImage
        let screenshotImage = screenshotView.snapshotImage()
        
        //and send it to the API to get a QR code back
        
        //then, display the QRcode to the user
    }
    
    func updateUI() {
        
        //update user's name and image
        
        //fill in the all the social media info that was added in the socialMedia array
        for aSocialMedia in socialMedia {
           //create a new stack view and update the icon, name of social media, and the user handle
            
        }
        
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
