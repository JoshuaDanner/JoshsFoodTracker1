import UIKit


class RatingControl: UIStackView {
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
}

//MARK: Button Action
func ratingButtonTapped(button: UIButton) {
    print("Button pressed 👍")
}


//MARK: Private Methods

private func setupButtons() {
    // Create the button
    let button = UIButton()
    button.backgroundColor = UIColor.blue
    
    // Add constraints
    button.translatesAutoresizingMaskIntoConstraints = false // This removes the auto generated responses
    button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true // This is for the buttons height
    button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true // This is for the buttons width
                                                 // the isActive property activates or deactivates the constraints
    
    // Setup the button action
    button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
    
    // Add the button to the stack
    addArrangedSubview(button)
    
}



