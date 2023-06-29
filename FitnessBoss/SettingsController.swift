//
//  SettingsController.swift
//  FitnessBoss
//
//  Created by APPLE on 6/6/23.
//

import UIKit

class SettingsController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
        let tableView = UITableView()
   
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemMint
            tableView.dataSource = self
            tableView.delegate = self
            tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
            
            
            let imageView = UIImageView(image: UIImage(named: "Vector"))
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.layer.cornerRadius = imageView.frame.size.width / 2
            imageView.clipsToBounds = true
            
            view.addSubview(imageView)
            view.addSubview(tableView)
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.layer.cornerRadius = 20
            tableView.layer.masksToBounds = true
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height * 0.36),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
            
            NSLayoutConstraint.activate([
                imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                imageView.widthAnchor.constraint(equalToConstant: 100),
                imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
            ])

        }
    

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 6
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellHeight: CGFloat = 60
           let spacing: CGFloat = 15 // Set the desired spacing between cells
           
        return cellHeight + spacing // Set the desired height for the cells
    }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
            
            var labelText: String
            var symbolName : String
            switch indexPath.row {
            case 0:
                symbolName = "person.crop.circle.fill"
                labelText = "Edit Profile "
            case 1:
                symbolName = "banknote.fill"
                labelText = "Bank Information"
            case 2:
                symbolName = "bell.fill"
                labelText = "Notifications"
            case 3:
                symbolName = "lock.circle.fill"
                labelText = "Password"
            case 4:
                symbolName = "lock.shield"
                labelText = "Privacy Policy"
            case 5:
                symbolName = "rectangle.portrait.and.arrow.forward.fill"
                labelText = "Log Out"
            default:
                symbolName = ""
                labelText = ""
               
            }
            let symbolImage = UIImage(systemName: symbolName)

            cell.imageView?.image = symbolImage?.withRenderingMode(.alwaysTemplate)
            cell.textLabel?.text = labelText
            cell.accessoryType = .disclosureIndicator
            cell.imageView?.tintColor = UIColor.black
            return cell
        }
    

    }

    class CustomCell: UITableViewCell {
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)

            imageView?.translatesAutoresizingMaskIntoConstraints = false
            textLabel?.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                
                //
                imageView!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                imageView!.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
                imageView!.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
                imageView!.widthAnchor.constraint(equalTo: imageView!.heightAnchor),

                //textLabel
                
                textLabel!.leadingAnchor.constraint(equalTo: imageView!.trailingAnchor, constant: 16),
                textLabel!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
                textLabel!.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            ])
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

   

