//
//  FirstViewController.swift
//  ios-stations
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var clickButton: UIButton!
    
    @IBAction func presentSecondViewController(_ sender: Any) {
        let moveToSecondVC = storyboard?.instantiateViewController(identifier: "SecondView") as! SecondViewController
        moveToSecondVC.receiveDataUrl = "https://yahoo.co.jp/"
        let clickAlert = UIAlertController(title: nil,
                                           message: "\(moveToSecondVC.receiveDataUrl!)へ遷移しますがよろしいですか？",
                                           preferredStyle: .alert)
        clickAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.present(moveToSecondVC, animated: true, completion: nil)
        }))
        clickAlert.addAction(UIAlertAction(title: "cancel", style: .cancel))
        self.present(clickAlert, animated: true)
    }
    
    var books: [Book]?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}

extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

