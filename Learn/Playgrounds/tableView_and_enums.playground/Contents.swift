// Programmatically setting up a table view and populating with enum values
  
import UIKit
import PlaygroundSupport

class MyViewController: UIViewController{
    let cellId = "cell"
    
        enum Planets: String, CaseIterable {
            case mercury = "Mercury"
            case venus = "Venus"
            case earth = "Earth"
            case mars = "Mars"
            case jupiter = "Jupiter"
            case saturn = "Saturn"
            case uranus = "Uranus"
            case neptune = "Neptune"
            
            var description: String {
                switch self {
                case .mercury:
                    return "\(rawValue) is the 1st planet from the sun."
                case .venus:
                    return "\(rawValue) is the 2nd planet from the sun."
                case .earth:
                    return "\(rawValue) is the 3rd planet from the sun."
                case .mars:
                    return "\(rawValue) is the 4th planet from the sun."
                case .jupiter:
                    return "\(rawValue) is the 5th planet from the sun."
                case .saturn:
                    return "\(rawValue) is the 6th planet from the sun."
                case .uranus:
                    return "\(rawValue) is the 7th planet from the sun."
                case .neptune:
                    return "\(rawValue) is the 8th planet from the sun."
                }
            }
        }
    
    override func loadView() {
        let view = UIView()
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(tableView)
        self.view = view
        tableView.delegate = self
        tableView.dataSource = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.heightAnchor.constraint(equalTo: view.heightAnchor),
            tableView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
}

extension MyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Planets.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel!.text = Planets.allCases[indexPath.row].rawValue
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let planet = Planets.allCases[indexPath.row]
        let alert = UIAlertController(title: planet.rawValue, message: planet.description, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
