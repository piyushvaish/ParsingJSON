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
        }
        catch{
            print(error)
        }
        
        
        
    }


}

