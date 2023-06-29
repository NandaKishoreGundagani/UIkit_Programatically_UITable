//
//  ProfileController.swift
//  FitnessBoss
//
//  Created by APPLE on 6/5/23.
//

import UIKit
class ProfileController: UIViewController{
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    var  myminicardView : UIView = {
        var  myminiView = UIView()
        myminiView.backgroundColor = .blue
        myminiView.translatesAutoresizingMaskIntoConstraints = false
        return myminiView
    }()
    
    var  addCard : UIView = {
        var  miniaddcard = UIView()
        miniaddcard.backgroundColor = .blue
        miniaddcard.layer.cornerRadius = 15
        miniaddcard.translatesAutoresizingMaskIntoConstraints = false
        return miniaddcard
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.hidesBackButton = false
        
        let profileButton = UIButton()
              profileButton.setImage(UIImage(systemName: "person.crop.circle.fill"), for: .normal)
              profileButton.tintColor = .black
              
              // Create bell button
              let bellButton = UIButton(type: .system)
              bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
              bellButton.tintColor = .black
              profileButton.addTarget(self, action: #selector(activity), for: .touchUpInside)

              
              // Create greeting label
              let greetingLabel = UILabel()
              greetingLabel.text = "Hi, Good Morning!"
              greetingLabel.textColor = .black
              greetingLabel.font = UIFont.preferredFont(forTextStyle: .body)
              greetingLabel.numberOfLines = 1
              greetingLabel.textAlignment = .center
              
              // Create name label
              let nameLabel = UILabel()
              nameLabel.text = "Nanda Kishore"
              nameLabel.textColor = .black
              nameLabel.font = UIFont(name: "Helvetica-Bold", size: 20)
              nameLabel.textAlignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [greetingLabel, nameLabel])
                stackView.axis = .vertical
                
                // Create horizontal stack view for profile button and vertical stack
                let horizontalStackView = UIStackView(arrangedSubviews: [profileButton, stackView,])
                horizontalStackView.axis = .horizontal
                
                 let navigationItem = UINavigationItem()
                  navigationItem.leftBarButtonItem = UIBarButtonItem(customView: horizontalStackView)
                  navigationItem.rightBarButtonItem = UIBarButtonItem(customView: bellButton)
              

                // Create navigation bar
                let navigationBar = UINavigationBar()
                navigationBar.setItems([navigationItem], animated: false)
                
                // Add the navigation bar to the view
                view.addSubview(navigationBar)
                
                // Set constraints for the navigation bar
                navigationBar.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
                ])
                
                // Example content for the view controller
                view.backgroundColor = .white
        let hStack = UIStackView()
             hStack.axis = .horizontal
        hStack.alignment = .center
        hStack.distribution = .fillEqually
        hStack.spacing = 8
        
        
        let topUpButton = UIButton(type: .system)
        topUpButton.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        topUpButton.tintColor = .black
        
        // Create transferButton
        let transferButton = UIButton(type: .system)
        transferButton.setImage(UIImage(systemName: "arrow.forward"), for: .normal)
        transferButton.tintColor = .black
        
        // Create withdrawButton
        let withdrawButton = UIButton(type: .system)
        withdrawButton.setImage(UIImage(systemName: "banknote"), for: .normal)
        withdrawButton.tintColor = .black
        
        // Create othersButton
        let othersButton = UIButton(type: .system)
        othersButton.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        othersButton.tintColor = .black
        
        // Add the buttons to the HStack
        hStack.addArrangedSubview(topUpButton)
        hStack.addArrangedSubview(transferButton)
        hStack.addArrangedSubview(withdrawButton)
        hStack.addArrangedSubview(othersButton)
        
             
             // Set constraints for the VStack
    hStack.translatesAutoresizingMaskIntoConstraints = false
             view.addSubview(hStack)
             
             NSLayoutConstraint.activate([
                hStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                hStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                hStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
             ])
        
        
        
  let hStacklbl = UIStackView()
        hStacklbl.axis = .horizontal
        hStacklbl.alignment = .center
        hStacklbl.distribution = .fillEqually
       // hStacklbl.spacing = 8
  
        
        // Create topUpLabel
        let topUpLabel = UILabel()
        topUpLabel.text = "TopUp"
        topUpLabel.textAlignment = .center
        topUpLabel.font = UIFont.systemFont(ofSize: 12)
        topUpLabel.textColor = .black
        
        // Create transferLbl
        let transferLbl = UILabel()
        transferLbl.text = "Transfer"
        transferLbl.textAlignment = .center
        transferLbl.font = UIFont.systemFont(ofSize: 12)
        transferLbl.textColor = .black
        
        // Create withdrawLbl
        let withdrawLbl = UILabel()
        withdrawLbl.text = "Withdraw"
        withdrawLbl.textAlignment = .center
        withdrawLbl.font = UIFont.systemFont(ofSize: 12)
        withdrawLbl.textColor = .black
        
        // Create othersLbl
        let othersLbl = UILabel()
        othersLbl.text = "Others"
        othersLbl.textAlignment = .center
        othersLbl.font = UIFont.systemFont(ofSize: 12)
        othersLbl.textColor = .black
        
        hStacklbl.addArrangedSubview(topUpLabel)
        hStacklbl.addArrangedSubview(transferLbl)
        hStacklbl.addArrangedSubview(withdrawLbl)
        hStacklbl.addArrangedSubview(othersLbl)
        
        
        hStacklbl.translatesAutoresizingMaskIntoConstraints = false
                 view.addSubview(hStacklbl)
                 
                 NSLayoutConstraint.activate([
                    hStacklbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    hStacklbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                    hStacklbl.centerYAnchor.constraint(equalTo: view.centerYAnchor,  constant:  40)
                 ])
        
        // Add label as subview of button
        let subviews: [UIView] = [
            myminicardView,
            collectionView,
            addCard
        ]
          
        subviews.forEach { view.addSubview($0) }
//            setupButtons()
            setupLayout()
         //   profilActivity()
            greetMe()
        //accessButtons()
    }
    
  
   
        func setupLayout() {
            NSLayoutConstraint.activate([
                myminicardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                myminicardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                myminicardView.heightAnchor.constraint (equalToConstant: 100),
                myminicardView.topAnchor.constraint(equalTo: view.topAnchor , constant: 150)
            ])
            NSLayoutConstraint.activate([
                addCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                addCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                addCard.heightAnchor.constraint (equalToConstant: 130),
                addCard.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor , constant: -50)
            ])
            // Add collection view to the view hierarchy and set up its constraints
         
    }
    
    
    func greetMe(){}
    func topUplabel(){}
    func topupButton(){}
    func greetLabel(){}
    func profileButton(){}
    func nameLabel(){}
    func transferlab(){}
    func transferBtn(){}
    func withdrawlab(){}
    func withdrawBtn(){}
    func otherslab(){}
    func bellbtn(){}
    
    func createButton(imageName: String, frame: CGRect) -> UIButton {
        let button = UIButton(type: .system)
        button.frame = frame
        button.setImage(UIImage(systemName: imageName), for: .normal)
        button.tintColor = .black
        return button
    }

   
    @objc func activity(){
        let settingsView = SettingsController()
        navigationController?.pushViewController(settingsView, animated: true)

    }
    
  
}
