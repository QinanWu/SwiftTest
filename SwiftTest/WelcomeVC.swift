//
//  WelcomeVC.swift
//  SwiftTest
//
//  Created by wuanan on 2020/8/18.
//  Copyright © 2020 jy. All rights reserved.
//

import UIKit
import CoreData

class WelcomeVC: UIViewController {
    @IBOutlet weak var goalLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        goalLabel.text = "goal count\(Goal.GetAllGoal()?.count ?? 0)"
    }

    @IBAction func addGoal(_ sender: Any) {
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        let context = appDelegate.persistentContainer.viewContext
        let theGoal: Goal = NSEntityDescription.insertNewObject(forEntityName: "Goal", into: context) as! Goal
        theGoal.name = "Goaltest"
        do {
            try appDelegate.persistentContainer.viewContext.save()
        }catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }

    }
    
    
    @IBAction func dismiss(_ sender: Any) {
        self.view.removeFromSuperview()
        let homeVC: ViewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "ViewController")
        homeVC.selfviewWillAppear()
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
