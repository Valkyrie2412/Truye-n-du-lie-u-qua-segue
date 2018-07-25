//
//  DetailViewController.swift
//  Pass data use Segue
//
//  Created by Hiếu Nguyễn on 7/10/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    // TextField hien thi du lieu nhan duoc
    @IBOutlet weak var detailTextField: UITextField!
    // Doi tuong tiep nhan du lieu tu MasterviewController
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("\(type(of: self)) - viewDidLoad ")
        // hien thi du lieu len TextField ngay khi DetailviewController duoc khoi tao 
//        if let dataString = data {
//            detailTextField.text = dataString
//        }
//        if data != nil {
            detailTextField.text = data
//        }
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
        print("\(type(of: self)) - viewWillDisappear ")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(type(of: self)) - viewDidDisappear ")
    }
    deinit {
        print("\(type(of: self)) - Deinit ")
    }
//    @IBAction func backButton(_ sender: UIButton) {
//        let vc = sender.description as? MasterViewController
//
//
    
//        dismiss(animated: true, completion: nil)
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? MasterViewController {
        vc.name = detailTextField.text
        }
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
