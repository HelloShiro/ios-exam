

import UIKit

class DetailPage: UIViewController{

    //Shows the full details of a Person on a separate screen
    var person: Person?{
        didSet{
            if let person = person {
                labelfirstname.text = "firstname: " + person.firstname!
                labelLastname.text = "lastname: " + person.lastname!
                labelAddress.text = "address: " + person.address!
                labelMobile.text = "mobile: " + person.mobile!
                labelEmail.text = "email: " + person.email!
                labelBirthday.text = "birth: " + person.birthday!
                labelContactperson.text = "contact person: " + person.contactperson!
                labelContactpersonphone.text = "contact person phone: " + person.contactpersonphone!
                labelAge.text = "age: " + String(describing: person.age!)
            }
        }
    }
    
    let navigationView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 226/255, green: 240/255, blue: 218/255, alpha: 1)
        return view
    }()
    
    let navigationTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Details"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor.black
        return label
    }()
    
    let navigationBackButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "left")?.withRenderingMode(.alwaysTemplate)
        btn.setImage(image, for: UIControlState.normal)
        btn.backgroundColor =  UIColor(red: 218/255, green: 227/255, blue: 242/255, alpha: 1)
        btn.tintColor = UIColor.black
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(red: 96/255, green: 96/255, blue: 96/255, alpha: 1).cgColor
        btn.addTarget(self, action: #selector(handlePop), for: .touchUpInside)
        return btn
    }()

    let navigationDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()

    @objc func handlePop() {
        self.dismiss(animated: true, completion: nil)
    }
    
    let labelLastname : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let labelfirstname : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let labelBirthday : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let labelAge : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let labelEmail : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    let labelMobile : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "hiragana"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let labelAddress : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    let labelContactperson : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "hiragana"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let labelContactpersonphone : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(navigationView)
        view.addSubview(labelLastname)
        view.addSubview(labelfirstname)
        view.addSubview(labelEmail)
        view.addSubview(labelMobile)
        view.addSubview(labelBirthday)
        view.addSubview(labelContactperson)
        view.addSubview(labelContactpersonphone)
        view.addSubview(labelAddress)
        view.addSubview(labelAge)
        setupViews()
        view.backgroundColor = UIColor.white

        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handlePop))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
     
}



