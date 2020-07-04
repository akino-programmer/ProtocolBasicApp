//
//  ViewController.swift
//  ProtocolBasicApp
//
//  Created by 野口晃 on 2020/07/03.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit


//プロトコルを宣言する
class ViewController: UIViewController, CatchProtocol {
  
    @IBOutlet weak var label: UILabel!
    
    var count = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
    }

    func catchData(count: Int) {
        label.text = String(count)
    }
    
    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    
    }
}

