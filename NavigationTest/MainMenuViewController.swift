//
//  MainMenuViewController.swift
//  NavigationTest
//
//  Created by GrandFunk on 2017/4/29.
//  Copyright © 2017年 GrandFunk. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var homeImage: UIImageView!
    var animator: UIDynamicAnimator?

    @IBAction func buttonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Button tapped", message: "The button was tapped", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.animator = UIDynamicAnimator(referenceView: self.view)
        
        let gravity = UIGravityBehavior(items: [homeImage])
        self.animator?.addBehavior(gravity)
        
        let collision = UICollisionBehavior(items: [homeImage])
        collision.translatesReferenceBoundsIntoBoundary = true
        self.animator?.addBehavior(collision)
        
//        let anchor = CGPoint(x: self.view.bounds.width / 2, y: 0)
//        let attachment = UIAttachmentBehavior(item: homeImage, attachedToAnchor: anchor)
//        self.animator?.addBehavior(attachment)
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
