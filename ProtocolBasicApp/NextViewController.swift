//
//  NextViewController.swift
//  ProtocolBasicApp
//
//  Created by 野口晃 on 2020/07/04.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

protocol CatchProtocol {
    //規則を決める
    func catchData(count:Int)
    
}

class NextViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    var delegate:CatchProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plusAction(_ sender: Any) {
        count = count + 1
        label.text = String(count)
        
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        //デリゲートメソッドを任せたクラスで発動させる
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
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
