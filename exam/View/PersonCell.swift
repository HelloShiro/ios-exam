import UIKit
class PersonCell: BaseCell {
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()
    
    let labelLastname : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lastname"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let labelFirstname : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    override func setupCellViews() {

        let containerView =  UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(containerView)
        containerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        containerView.addSubview(labelLastname)
        containerView.addSubview(labelFirstname)
        addSubview(dividerLineView)
        
        labelFirstname.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        labelFirstname.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        labelFirstname.heightAnchor.constraint(equalToConstant: 30).isActive = true
        labelFirstname.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        labelLastname.leftAnchor.constraint(equalTo: labelFirstname.rightAnchor, constant: 20).isActive = true
        labelLastname.bottomAnchor.constraint(equalTo: labelFirstname.bottomAnchor, constant: 0).isActive = true
        labelLastname.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        labelLastname.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        dividerLineView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        dividerLineView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        dividerLineView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
}


