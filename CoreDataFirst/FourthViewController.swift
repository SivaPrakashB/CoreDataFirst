//
//  FourthViewController.swift
//  CoreDataFirst
//
//  Created by Apple on 17/07/18.
//  Copyright © 2018 senovTech. All rights reserved.
//

import UIKit
import CoreData

class FourthViewController:UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: UIButton) {
        //Refer to persistentContainer
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //Create the context
        let context = appDelegate.persistentContainer.viewContext
        //Create an entity and new user records.
        let entity = NSEntityDescription.entity(forEntityName: "Third", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue("\(username.text!)", forKey: "userName33")
        newUser.setValue("\(password.text!)", forKey: "password33")
        //save data
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
        /*  let appdelegate=UIApplication.shared.delegate as! AppDelegate
         let context=appdelegate.persistentContainer.viewContext
         let entity=NSEntityDescription.entity(forEntityName: "UserDetails", in: context)
         let user=NSManagedObject(entity: entity!, insertInto: context)
         do{
         try context.save()
         }
         catch
         {
         print(error.localizedDescription,"bvsp")
         }
         
         */
    }
    
}

