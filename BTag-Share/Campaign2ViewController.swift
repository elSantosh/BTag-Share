//
//  Campaign2ViewController.swift
//  BTag-Share
//
//  Created by Santosh Guruju | MACROKIOSK on 01/07/20.
//  Copyright © 2020 Santosh Guruju | MACROKIOSK. All rights reserved.
//

import UIKit

class Campaign2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func ShareButton(_ sender: Any) {
        
       let firstActivityItem = "Enjoy our value meals for RM15.00 nett only. Incl.of ice- lemon tea. Click the link below to order:"
       let secondActivityItem : NSURL = NSURL(string: "http://btag.co/BrotzMeal2_AUqHE")!
       // If you want to put an image
       let image : UIImage = UIImage(named: "Brotz_ValueMeal02")!

       let activityViewController : UIActivityViewController = UIActivityViewController(
           activityItems: [firstActivityItem, secondActivityItem, image], applicationActivities: nil)

       // This lines is for the popover you need to show in iPad
       activityViewController.popoverPresentationController?.sourceView = (sender as! UIButton)

       // This line remove the arrow of the popover to show in iPad
       //activityViewController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.allZeros
       activityViewController.popoverPresentationController?.sourceRect = CGRect(x: 150, y: 150, width: 0, height: 0)

       // Anything you want to exclude
       activityViewController.excludedActivityTypes = [
//           UIActivity.ActivityType.postToWeibo,
//           UIActivity.ActivityType.print,
//           UIActivity.ActivityType.assignToContact,
//           UIActivity.ActivityType.saveToCameraRoll,
//           UIActivity.ActivityType.addToReadingList,
//           UIActivity.ActivityType.postToFlickr,
//           UIActivity.ActivityType.postToVimeo,
//           UIActivity.ActivityType.postToTencentWeibo,
//           UIActivity.ActivityType.postToFacebook,
//           UIActivity.ActivityType.message
           
       ]

       self.present(activityViewController, animated: true, completion: nil)
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
