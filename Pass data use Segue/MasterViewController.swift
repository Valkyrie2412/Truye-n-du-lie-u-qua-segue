//
//  ViewController.swift
//  Pass data use Segue
//
//  Created by Hiếu Nguyễn on 7/10/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    // TextField nhan du lieu truyen sang DetailViewController
    @IBOutlet weak var masterTextField: UITextField!
    var name: String?
    override func viewDidLoad() { 
        super.viewDidLoad()
        if name != nil {
            masterTextField.text = name
        }
        // Do any additional setup after loading the view, typically from a nib.
        print("\(type(of: self)) - viewDidLoad ")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(type(of: self)) - viewWillAppear ")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(type(of: self)) - viewDidAppear ")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(type(of: self)) - Viewwil DisAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(type(of: self)) - viewDidDisappear ")
    }
    deinit {
        print("\(type(of: self)) - Deinit ")
    }
    
    // Cai dat phuong thuc prepare for segue de truyen du lieu sang scene dich
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // tao doi tuong the hien dai dien cho ViewController cua scene 2
        if let detailViewController = segue.destination as? DetailViewController {
            // Truyen du lieu sang scene 2 thong qua doi tuong destination 
            detailViewController.data = masterTextField.text
        }
    }

//    @IBAction func returned(segue: UIStoryboardSegue) {
//        masterTextField.text = " Returned from DetailViewController"
//    }
    
}

