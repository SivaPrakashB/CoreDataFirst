//
//  SecondViewController.swift
//  CoreDataFirst
//
//  Created by Apple on 28/06/18.
//  Copyright © 2018 senovTech. All rights reserved.
//

import UIKit
import CoreData

class SecondViewController: UIViewController {

    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var username: UILabel!
    var a=String()
    var b=String()
    var c=String()
    var a1=String()
    var b1=String()
    var c1=String()
    var dummyOp:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request1 = NSFetchRequest<NSFetchRequestResult>(entityName: "UserDetails")
         let request2 = NSFetchRequest<NSFetchRequestResult>(entityName: "Second")
         let request3 = NSFetchRequest<NSFetchRequestResult>(entityName: "Third")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request1.returnsObjectsAsFaults = false
        request2.returnsObjectsAsFaults = false
        request3.returnsObjectsAsFaults = false
        do {
            let resulta = try context.fetch(request1)
            guard let dummyArray=resulta.last  else
          {
            return print("Error")
            }
            
        let abc123=dummyArray as! NSManagedObject
            guard let abc=abc123.value(forKey: "userName"),let abc1=abc123.value(forKey: "userName"),let abc2=dummyOp else
            {
                
                return print("abc2")
            }
            print(abc)
            for data in resulta as! [NSManagedObject] {
               a=data.value(forKey: "userName") as! String
              a1=data.value(forKey: "password1") as! String
               
            }
            let resultb = try context.fetch(request2)
            
            for data in resultb as! [NSManagedObject] {
                b=data.value(forKey: "userName22") as! String
                b1=data.value(forKey: "password22") as! String
                
            }
            let resultc = try context.fetch(request3)
            
            for data in resultc as! [NSManagedObject] {
                c=data.value(forKey: "userName33") as! String
                c1=data.value(forKey: "password33") as! String
                
            }
         self.username.text=a+b+c
            self.password.text=a1+b1+c1
            
        } catch {
            
            print("Failed")
        }
      
    }
    override func viewWillAppear(_ animated: Bool) {
       /* let appdelegate=UIApplication.shared.delegate as! AppDelegate
        let context=appdelegate.persistentContainer.viewContext
        let request=NSFetchRequest<NSFetchRequestResult>(entityName: "UserDetails")
        do{
          let result=try context.fetch(request)
        }
        catch
        {
            print(error.localizedDescription)
        }*/
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    

}
