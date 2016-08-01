# MQDrawerDemo
pan 手势抽屉效果实现
===================================
展示效果：
-----------------------------------
##效果1:

![image](https://github.com/MengQuietly/MQDrawerDemo/blob/master/MQDrawerDemo/MQDrawerDemo/1.gif)


##效果2:

![image](https://github.com/MengQuietly/MQDrawerDemo/blob/master/MQDrawerDemo/MQDrawerDemo/2.gif) 

How to use
-----------------------------------
#步骤1:新建控制器<MQMainViewController> 继承 抽屉工具类<MQDrawerTool>
#步骤2: MQMainViewController 的 viewDidLoad()方法中调用：（如下2种《设置一个tableViewController 为中间的主视图控制器》）
##无导航栏控制器调用
    let table = MQTableMainController()
    table.view.frame = self.view.bounds
    self.addChildViewController(table)
    mainView.addSubview(table.view)

##有导航栏控制器调用
    let table = MQTableMainController()
    let nav = UINavigationController(rootViewController: table)
    nav.navigationBar.translucent = false
    nav.navigationBar.barTintColor = UIColor.redColor()
    table.title = "展示数据"
    nav.view.frame = self.view.bounds
    self.addChildViewController(nav)
    mainView.addSubview(nav.view)
##提示：MQMainViewController 的 viewDidLoad()方法必须super.viewDidLoad()，否则无效果


