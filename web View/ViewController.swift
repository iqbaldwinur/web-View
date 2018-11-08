//
//  ViewController.swift
//  web View
//
//  Created by Iqbal Dwi Nur Khoirul anam on 19/10/18.
//  Copyright © 2018 iqbal project. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var web: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = "https://www.google.com/"
        web.load(URLRequest(url: URL(string: url)!))
    }
    
    @IBAction func btnBack(_ sender: UIBarButtonItem) {
        // cek web bisa ke halaman sebelumnya atau tidak
        if web.canGoBack {
            // kalo gaa bisa
            web.goBack() // ke halaman sebelumnya
            
        }
         else { // kalo udah di home
            print("ini udah di home atau halaman awal")
        }
    }
    
    @IBAction func btnForward(_ sender: UIBarButtonItem) {
        if web.canGoForward {
            
        web.goForward()
    }
        else {
            print("ini sudah di halaman selanjutnya")
        }
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

