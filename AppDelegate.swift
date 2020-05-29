import UIKit






@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	
	
	var window: UIWindow?
	
	var tabVC:UITabBarController!
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow(frame: UIScreen.main.bounds)
		
		
		
		setTabBar()
		
		UIApplication.shared.statusBarStyle = .lightContent

		UINavigationBar.appearance().prefersLargeTitles = true
		UINavigationBar.appearance().barTintColor = UIColor(red:0.108 ,green:0.108 ,blue:0.210 ,alpha:1)
		UINavigationBar.appearance().tintColor = UIColor(red:1 ,green:0.125 ,blue:0.125 ,alpha:1)
		UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
		UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor(red:1 ,green:0.125 ,blue:0.125 ,alpha:1)]
		
		window!.rootViewController = tabVC
		
		
		
		window!.makeKeyAndVisible()
		
		
		
		
		return true
	}
	
	
	
	
	func setTabBar() {
		
		
		let kFs:CGFloat = 19.0
		
		let chemVC = UINavigationController(rootViewController: ChemController())
		chemVC.title = "Chemistry"
		chemVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize:kFs)], for: .normal)
		chemVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize:kFs)], for: .selected)
		chemVC.tabBarItem.titlePositionAdjustment = UIOffsetMake(0.0, -10.0)
		
		let MathVC = UINavigationController(rootViewController: MathController())
		MathVC.title = "Math"
		MathVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize:kFs)], for: .normal)
		MathVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize:kFs)], for: .selected)
		
		MathVC.tabBarItem.titlePositionAdjustment = UIOffsetMake(0.0, -10.0)
		
		
		tabVC = UITabBarController()
		tabVC.tabBar.tintColor = UIColor(red:1 ,green:0.125 ,blue:0.125 ,alpha:1)
		tabVC.tabBar.barTintColor = UIColor(red:0.108 ,green:0.108 ,blue:0.210 ,alpha:1)
		tabVC.viewControllers = [chemVC, MathVC]
		
	}
	 
	
	
}
