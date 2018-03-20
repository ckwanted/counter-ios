//
//  ViewController.swift
//  Counter
//
//  Created by ckwanted on 20/3/18.
//  Copyright © 2018 ckwanted. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    
    typealias StoreSubscriberStateType = AppState

    @IBOutlet weak var count: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // subscribe to state changes
        store.subscribe(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        store.unsubscribe(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newState(state: AppState) {
        // when the state changes, the UI is updated to reflect the current state
        count.text = String(store.state.counter)
    }
    
    @IBAction func decrementNumber(_ sender: Any) {
        store.dispatch(decrement())
    }
    @IBAction func incrementNumber(_ sender: Any) {
        store.dispatch(increment())
    }
    
}

