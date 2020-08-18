//
//  ViewController.swift
//  SwiftTest
//
//  Created by wuanan on 2020/8/18.
//  Copyright © 2020 jy. All rights reserved.
//

import UIKit
import CoreData

extension Goal {
    class func GetAllGoal() -> [Any]? {
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        let fetchRequest: NSFetchRequest = Goal.fetchRequest()
        do {
            let context = appDelegate.persistentContainer.viewContext
            let result = try context.fetch(fetchRequest)
            return result
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}

class ViewController: UIViewController {
    var goalArr: NSArray = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func selfviewWillAppear() {
        goalArr = Goal.GetAllGoal()! as NSArray
    }
    
    @IBAction func test2Pressed(_ sender: Any) {
        NSLog("goalarr_countis_\(goalArr.count)")
    }
    
    
}

