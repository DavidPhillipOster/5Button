//  ViewController.swift
//  6Button
//

import UIKit

class ViewController: UIViewController {

  @IBAction func doButton(_ sender:UIButton) {
    let command = [
      "http://10.240.101.68/stateFull.xml?relay1state=2",
      "http://10.240.101.68/stateFull.xml?relay2state=2",
      "http://10.240.101.68/stateFull.xml?relay4state=2",
      "http://10.240.101.68/stateFull.xml?relay3state=2",
      "http://10.240.101.69/stateFull.xml?relay1state=2",
      "http://10.240.101.69/stateFull.xml?relay2state=2",
    ]
    let request = URLRequest(url: URL(string:command[sender.tag])!, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
    let task = URLSession.shared.dataTask(with: request)
    task.resume()
  }

}

