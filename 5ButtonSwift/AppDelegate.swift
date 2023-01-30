//  AppDelegate.swift
//  5ButtonSwift

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet var window: NSWindow!

  func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
    return true
  }

  @IBAction func doButton(_ sender:NSButton) {
    let command = [
      "http://10.240.101.68/stateFull.xml?relay1state=2",
      "http://10.240.101.68/stateFull.xml?relay2state=2",
      "http://10.240.101.68/stateFull.xml?relay4state=2",
      "http://10.240.101.68/stateFull.xml?relay3state=2",
      "http://10.240.101.69/stateFull.xml?relay1state=2",
      "http://10.240.101.69/stateFull.xml?relay2state=2",
    ]
    //print("\(sender.title)");
    do {
      // put the path to curl in the URL,    remove it from the arguments
      try Process.run(URL(fileURLWithPath: "/bin/echo"), arguments:["curl", command[sender.tag] ])
    }catch {
    }
  }

}

