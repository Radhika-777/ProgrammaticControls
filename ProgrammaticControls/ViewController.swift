//
//  ViewController.swift
//  ProgrammaticControls
//
//  Created by Radhika Chilukuri on 21/05/22.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
  
  @IBOutlet weak var label1: UILabel! {
    didSet {
      label1.numberOfLines = 0
      label1.backgroundColor = .systemBlue
      label1.text = " "
      label1.textColor = .red
      label1.textAlignment = .center
      
    }
  }
  
  lazy var myLabel: UILabel = {
    let myLabel = UILabel()
    myLabel.translatesAutoresizingMaskIntoConstraints = false
    myLabel.backgroundColor = .systemTeal
    myLabel.textAlignment = .center
    myLabel.numberOfLines = 0 // Dynamically changes UiLabel width and height
    myLabel.text = "Hello, Welcome to Apple Keynote - WWDC 2022 bvbvhdfhfbvfjg fbgdfh fbghdf   hfbgdfjgjf hfghdfbgh ghfgh"
    myLabel.textColor = .systemRed
    return myLabel
  }()
  
  lazy var myTextView: UITextView = {
    let myTextiew = UITextView()
  myTextiew.translatesAutoresizingMaskIntoConstraints =  false
  myTextiew.backgroundColor = .systemBlue
  myTextiew.textAlignment = .center
  myTextiew.textColor = .white
    myTextiew.layer.cornerRadius = 10
    myTextiew.sizeToFit()
    myTextiew.isScrollEnabled = false
    myTextiew.isEditable = true

  myTextiew.text = "Nulla ultricies orci justo, et rutrum enim tincidunt none"
  return myTextiew
  }()
  
   
  private lazy var myView : UIView = {
    let myView = UIView()
    myView.backgroundColor = .systemRed
    myView.translatesAutoresizingMaskIntoConstraints = false
    return myView
  }()
  
  private let myImageView: UIImageView = {
    let myImageView = UIImageView(image: UIImage(named: "baby tom"))
    return myImageView
  }()
  
  private let myImage2View: UIImageView = {
    let myImage2View = UIImageView(image: UIImage(named: "scene1"))
    return myImage2View
  }()
  
  let descriptionView: UITextView = {
   
    let textView = UITextView()
    textView.text = "Hello,dfdvdfbxvbvc  xçxvfgdfgdfg"
    return textView
  }()

//MARK: Entry point of our app
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(myLabel)
      setLabelPosition()
    view.addSubview(myTextView)
    setTextViewPosition()
      //super view back ground color
  view.backgroundColor = .systemYellow
  
 
 //print(view.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize))
 // view.addSubview(myView)
  //  view.addSubview(myImageView)
  //  view.addSubview(myImage2View)
 // viewExtensionCall()
 // addConstarintsToView()
// setLayout()
    
}
  
  func setLabelPosition() {
    
    NSLayoutConstraint.activate([
 // myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
 // myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
  myLabel.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor),
  myLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
  //myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
  myLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 150),
  myLabel.heightAnchor.constraint(equalToConstant: 10)
  //myLabel.heightAnchor.constraint(equalTo: myLabel.widthAnchor, multiplier: 1.0/6.0) //
  ])
  }
  
  func setTextViewPosition() {
   NSLayoutConstraint.activate([
 myTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
  myTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
  myTextView.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 20),
 
  myTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
  myTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
 myTextView.heightAnchor.constraint(equalToConstant: 10)
 
 
  
    ])
  }
    
   // let horizontal = myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    //let vertical = myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//    let top = myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
//    let right = myLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
//
//    let left = myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
//   let width = myLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 150)
//      // Aspect ratio
//    myLabel.heightAnchor.constraint(equalTo: myLabel.widthAnchor, multiplier: 1.0/3.0)
//    let height = myLabel.heightAnchor.constraint(equalToConstant: 60)
   // let aspectRatio = myLabel.heightAnchor.constraint(equalTo: myLabel.widthAnchor, multiplier: 1.0/3.0)
  
    
//    myLabel.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//    myLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
  
  

    // MARK: Method 1
  func addConstarintsToView() {
   
    myView.backgroundColor = .systemTeal
    var constraints = [NSLayoutConstraint]()
    constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
    constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
    constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
    constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))

//Activate Constraints
    NSLayoutConstraint.activate(constraints)
 }

 /* func viewExtensionCall() {
    myView.addAnchors(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 16))

    // give padding
}*/
  
  //MARK: Add constraints to image view on top of myView
  
  func setLayout() {
  
  
    myImageView.translatesAutoresizingMaskIntoConstraints = false
    myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
   myImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    myImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
    myImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -680).isActive = true
    myImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    myImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true

  
  
    myImage2View.translatesAutoresizingMaskIntoConstraints = false
    myImage2View.centerXAnchor.constraint(equalTo: myImageView.centerXAnchor).isActive = true
   //myImage2View.centerYAnchor.constraint(equalTo: myImageView.centerYAnchor).isActive = true
    myImage2View.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 20).isActive = true
   myImage2View.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -480).isActive = true
    myImage2View.widthAnchor.constraint(equalToConstant: 200).isActive = true
    myImage2View.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
    descriptionView.translatesAutoresizingMaskIntoConstraints =  false
    descriptionView.topAnchor.constraint(equalTo: myImage2View.bottomAnchor, constant: 30).isActive = true
    descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true

}
}

// MARK: Method 2


//func selfExecutingClosures() {
//  var myName = { "I am Radhika"
//}()
//
//  lazy var tbView : UITableView = {
//    //Initialise table view
//    let tbView = UITableView(frame: .zero)
//  //Configure tableView
//
////  tbview.delegate = self
////  tbView.dataSource = self
//  tbView.translatesAutoresizingMaskIntoConstraints = false
//  return tbView
//
//  }()
//}

final class startView: UIView {
  
  lazy var activityIndicator: UIActivityIndicatorView = {
    let activityIndicator = UIActivityIndicatorView(style: .medium)
    activityIndicator.translatesAutoresizingMaskIntoConstraints = false
    activityIndicator.backgroundColor = .systemRed
    return activityIndicator
}()
  
  lazy var activityInfoTextLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.backgroundColor = .green
    label.text = "Hello, Welcome to Apple keynote - WWDC 2022"
    label.textAlignment = .center
    label.layer.cornerRadius = 9
    return label
}()
  init() {
    super.init(frame:  .zero)
    setupUI()
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupUI() {
    
    // 1.View background
    backgroundColor = .yellow
    
    //2.Activity indicator view position
    addSubview(activityIndicator)
    activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    
    //Text label
    addSubview(activityInfoTextLabel)
    activityInfoTextLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
    activityInfoTextLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    activityInfoTextLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    activityInfoTextLabel.bottomAnchor.constraint(equalTo: activityIndicator.topAnchor).isActive = true
  }
}
