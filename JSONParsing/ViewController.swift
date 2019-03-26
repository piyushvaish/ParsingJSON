//
//  ViewController.swift
//  JSONParsing
//
//  Created by Macbook Pro on 26/03/19.
//  Copyright © 2019 Macbook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Commit
        // Do any additional setup after loading the view, typically from a nib.
        guard let path = Bundle.main.path(forResource: "JsonApi", ofType: "txt") else{
            return
        }
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            print(json)
            
            guard let array = json as? [Any] else{
                return
            }
            for dict in array{
                guard let userDict = dict as? [String:Any] else{
                    return
                }
                guard let email = userDict["email"] as? String else{
                    return
                }
                guard let name = userDict["name"] as? String else{
                    return
                }
                print(email)
                print(name)
            }
            print(array.count)
        }
        catch{
            print(error)
        }
        
        
        
    }


}

