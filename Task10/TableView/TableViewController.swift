//
//  TableViewController.swift
//  Task10
//
//  Created by 野村大悟 on 2021/06/04.
//

import UIKit

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Prefecture.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable:next force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PrefectureCell
        cell.configure(name: Prefecture.names[indexPath.row], index: indexPath.row)
        return cell
    }
}
