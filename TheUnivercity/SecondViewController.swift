//
//  SecondViewController.swift
//  TheUnivercity
//
//  Created by Kutman Kakiev on 25/1/23.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var landmarkText = [String]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    var chosenLandmarkText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = chosenLandmarkName

        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("American University of Central Asia")
        landmarkNames.append("Columbia University")
        landmarkNames.append("Harvard Univercity")
        landmarkNames.append("Univercity of Cambridge")
        landmarkNames.append("Kyrgyz Turkish Manas Univercity")
        landmarkNames.append("Orta Dogu Teknik Universitesi")
        landmarkNames.append("OHIO Univercity")
        landmarkNames.append("Oxford Univercity")
        landmarkNames.append("Stanford Univercity")
        landmarkNames.append("University of Massachusetts")
        
        landmarkImages.append(UIImage(named: "auca")!)
        landmarkImages.append(UIImage(named: "columbia")!)
        landmarkImages.append(UIImage(named: "harvard")!)
        landmarkImages.append(UIImage(named: "kembridge")!)
        landmarkImages.append(UIImage(named: "ktmu")!)
        landmarkImages.append(UIImage(named: "odtu")!)
        landmarkImages.append(UIImage(named: "ohio")!)
        landmarkImages.append(UIImage(named: "oxford")!)
        landmarkImages.append(UIImage(named: "stanford")!)
        landmarkImages.append(UIImage(named: "umass")!)
        
        landmarkText.append("Founded in 1993, AUCA develops future leaders for the democratic transformation of Central Asia. American University of Central Asia is an international, multi-disciplinary learning community in the American liberal arts tradition. AUCA is the first university in Central Asia to offer US accredited degrees in liberal arts programs through a partnership with Bard College in the United States. In addition to Bard, AUCA maintains partnerships with a number of universities and organizations worldwide.")
        
        landmarkText.append("Columbia University is one of the world's most important centers of research and at the same time a distinctive and distinguished learning environment for undergraduates and graduate students in many scholarly and professional fields. The University recognizes the importance of its location in New York City and seeks to link its research and teaching to the vast resources of a great metropolis. It seeks to attract a diverse and international faculty, staff, and student body, to support research and teaching on global issues, and to create academic relationships with many countries and regions. It expects all areas of the University to advance knowledge and learning at the highest level and to convey the products of its efforts to the world.")
        
        landmarkText.append("Harvard is a founding member of the Association of American Universities and a preeminent research university with very high research activity (R1) and comprehensive doctoral programs across the arts, sciences, engineering, and medicine according to the Carnegie Classification.")
        
        landmarkText.append("Founded in 1209 and granted a royal charter by King Henry III in 1231, Cambridge is the world's third-oldest surviving university and one of its most prestigious, currently ranked second-best in the world and the best in Europe by QS World University Rankings.")
        
        landmarkText.append("Kyrgyz-Turkish Manas University is a public institute of higher education, founded on a charter signed by the Government of the Kyrgyz Republic and the Government of the Republic of Turkey. The charter was signed on September 30, 1995, in Izmir, Turkey, and created Kyrgyz-Turkish Manas University.")
        
        landmarkText.append("Orta Doğu Teknik Üniversitesi started education on November 15, 1956 as the of Orta Doğu Yüksek Teknoloji Enstitüsü (Middle East High Technology Institute) in order to contribute to the development of Turkey and countries in the Middle East, and especially to train people so as to create a skilled workforce in the fields of natural and social sciences. On January 29, 1957, Law Number 6887 on the foundation of our university and the relevant procedures came into force. On May 27th, 1959, however, “Foundation Law Number 7307”, which specified the special status of ODTÜ and rendered it a juridical entity, was enacted.")
        
        landmarkText.append("Ohio University is a public research university in Athens, Ohio.[7] The first university chartered by an Act of Congress[8] and the first to be chartered in Ohio,[9] the university was chartered in 1787 by the Congress of the Confederation and subsequently approved for the territory in 1802 and state in 1804,[10] opening for students in 1809.[11] Ohio University is the oldest university in Ohio and among the oldest public universities in the United States.")
        
        landmarkText.append("The University of Oxford is a collegiate research university in Oxford, England. There is evidence of teaching as early as 1096,[2] making it the oldest university in the English-speaking world and the world's second-oldest university in continuous operation.[2][9][10] It grew rapidly from 1167 when Henry II banned English students from attending the University of Paris.[2] After disputes between students and Oxford townsfolk in 1209, some academics fled north-east to Cambridge where they established what became the University of Cambridge.[11] The two English ancient universities share many common features and are jointly referred to as Oxbridge. Both are ranked among the most prestigious universities in the world.")
        
        landmarkText.append("Stanford was founded in 1885 by Leland and Jane Stanford in memory of their only child, Leland Stanford Jr., who had died of typhoid fever at age 15 the previous year.[2] Leland Stanford was a U.S. senator and former governor of California who made his fortune as a railroad tycoon. The school admitted its first students on October 1, 1891,[2][3] as a coeducational and non-denominational institution. Stanford University struggled financially after the death of Leland Stanford in 1893 and again after much of the campus was damaged by the 1906 San Francisco earthquake.[21] Following World War II, provost of Stanford Frederick Terman inspired and supported faculty and graduates' entrepreneurialism to build a self-sufficient local industry, which would later be known as Silicon Valley.")
        
        landmarkText.append("The University of Massachusetts Amherst (UMass Amherst, UMass) is a public research university in Amherst, Massachusetts and the sole public land-grant university in Commonwealth of Massachusetts. Founded in 1863 as an agricultural college, it is the flagship and the largest campus in the University of Massachusetts system, as well as the first established. It is also a member of the Five College Consortium, along with four other colleges in the Pioneer Valley: Amherst College, Smith College, Mount Holyoke College, and Hampshire College.")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        //content.image = landmarkImages[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        chosenLandmarkText = landmarkText[indexPath.row]
        performSegue(withIdentifier: "toDetails", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
            destinationVC.selectedLandmarkText = chosenLandmarkText
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            self.landmarkText.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    
}
