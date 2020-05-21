import UIKit




struct spAngle : Codable {
	var dgree:String
	
	var radian:String
	
	var sin:String
	
	var cos:String
	
	var tan:String
	
	var cot:String
	
	var sec:String
	
	var csc:String
}


class AngleInfoVC: UITableViewController {
	
	
	
	var sAngle:spAngle
	
	
	required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
	
	
	override func loadView() {
		super.loadView()
		view.backgroundColor = UIColor.white
		
		//self.title = "Math"
		
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MtCell")
		
		
		
	}
	
	
	
	 init(sap:spAngle){
		 
		 self.sAngle = sap
		 
		 
		 super.init(style: .plain)
		 
	 }
	
	
	
	
	
	
	 override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		switch (section) {
			
			case 0:
				return "Dgree"
				
			case 1:
				return "Radian"
				
			case 2:
				return "Sin"
				
			case 3:
				return "Cos"
				
			case 4:
				return "Tan"
				
			case 5:
				return "Cot"
				
			case 6:
				return "Sec"
				
			case 7:
				return "Csc"
				
			default:
			return "Dgree"
			
		}
	 }
	
	
		override func numberOfSections(in tableView: UITableView) -> Int {
		return 8
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "MtCell", for: indexPath)
		
		
		switch (indexPath.section) {
			
			case 0:
				cell.textLabel?.text = sAngle.dgree
				break;
			case 1:
				cell.textLabel?.text = sAngle.radian
				break; 
			case 2:
				cell.textLabel?.text = sAngle.sin
				break;
			case 3:
				cell.textLabel?.text = sAngle.cos
				break; 
			case 4:
				cell.textLabel?.text = sAngle.tan
				break;
			case 5:
				cell.textLabel?.text = sAngle.cot
				break; 
			case 6:
				cell.textLabel?.text = sAngle.sec
				break;
			case 7:
				cell.textLabel?.text = sAngle.csc
				break;
			default:
			break
		}
		
		
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}






}

