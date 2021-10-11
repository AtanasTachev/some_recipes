//
//  MyTableViewController.swift
//  some_recipes
//
//  Created by atanastachev on 7.10.21.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    /*class Recipe {
        var name: String?
        var timeToCook: String?
        var img: String?
        var details: String?
        
        static var recipes = [Recipe]()
        
        init () {
            Recipe.recipes.append(self)
        }
        init(name: String, timeToCook: String, img: String, details: String) {
            self.name = name
            self.details = details
            self.img = img
            self.details = details
            
        }
    }
    let recipe1 = Recipe(name: "Pork with rice", timeToCook: "1h 15min", img: "avocado", details: "Products: 500g pork, 150g rice, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe2 = Recipe(name: "Chicken soup", timeToCook: "45min", img: "avocadoto", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe3 = Recipe(name: "Chicken soup", timeToCook: "45min", img: "avocadoto", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe4 = Recipe(name: "Chicken soup", timeToCook: "45min", img: "avocadoto", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe5 = Recipe(name: "Pork goulash", timeToCook: "45min", img: "bonfile", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    //let data = [recipe]()
    //data.append(aRecipe: recipe)
    
    //func print(_: Recipe.recipes) */
    
    struct Recipe {
        var name: String
        var ingredientsAll: String
        var img: String
        var timeToCook: String
    }
    
    var recipes: [Recipe] = [ Recipe(
        name: "Риба в сос от марсала",
        ingredientsAll:
           """
        4 филета от риба (без кожа и кости)
        8 ленти сурово-пушен колбас
        150 мл вино „Марсала“
        80 мл животинска сметана
        50 мл олио
        40 г краве масло
        2 скилидки чесън
        1/2 глава лук
        4 стръка копър
        4 сварени картофа сол и пипер меланж на вкус
        """,
        img: "bonfile",
        timeToCook: "45 мин"),
        Recipe(
        name: "Сирене в кори с мед и сусам",
        ingredientsAll:
            """
        800 г твърдо козе сирене
        6 листа точени кори
        6 стръка мащерка
        6 щипки чили на прах
        6 с. л. сусам
        6 с. л. мед
        4 с. л. червен винен оцет
        80 мл зехтин
        """,
        img: "avocado",
        timeToCook: "30мин"),
    Recipe(
        name: "Тарт с дюли, мед и ром",
        ingredientsAll:
        """
        1 лист бутертесто
        2 дюли 4 с. л. мед
        30 мл тъмен ром
        250 мл животинска сметана
        5 жълтъка
        100 г филирани бадеми
        """,
        img: "tart",
        timeToCook: "1ч 30мин"
    ),
    Recipe(
    name: "Обърнат кейк с круши",
    ingredientsAll:
    """
    5 круши
    за
    маслото:
    80 г захар
    60 г краве масло
    за тестото:
    4 яйца
    1 1/2 ч. ч. захар
    2/3 ч. ч. олио
    1 ч. ч. прясно мляко
    2 1/2 ч. ч брашно
    1 пакетче бакпулвер
    1 ванилия 1/2 ч. л. сух джинджифил пудра захар за поднасяне
""" ,
     img: "torta",
     timeToCook: "50мин"),
Recipe (
    name: "Зелена супа с тортелини",
    ingredientsAll:
    """
    400 г пресни тортелини с рикота
    800 мл пилешки бульон
    500 г почистен спанак
    1 тиквичка
    1 с. л. брашно
    1 връзка пресен лук
    1 връзка пресен чесън
    1 връзка магданоз
    1/2 връзка пресен джоджен
    2 с. л. краве масло
    сол и черен пипер на вкус
    """,
    img: "zelenaSupa",
    timeToCook: "40мин"),
    Recipe(
    name: "Запечени \"Фермерски яйца\"",
    ingredientsAll: """
2 големи царевични тортили
    100 г заквасена сметана
    100 г наденица „Чоризо“
    60 г кашкавал
    4 яйца
    1 консерва домати на кубчета (400 г)
    2 малки сухи люти чушки
    1 зелена люта чушка
    1 зелена чушка
    2 скилидки чесън
    1 глава лук
    1/2 авокадо
    1/4 връзка пресен кориандър
    1 с. л. зехтин
    1/4 ч. л. кимион
    сол и черен пипер на вкус
""",
    img: "zapecheniJajza",
    timeToCook: "30мин"),
    Recipe(
    name: "Агнешко с грах",
    ingredientsAll: """
    500–600 г обезкостено агнешко
    1 с. л. доматено пюре
    1 с. л. брашно
    1 ч. л. сол
    750 г замразен грах
    1 ч. л. червен пипер
    1 морков
    3 стръка лук
    6 с. л. олио
3–4 стръка джоджен
""",
    img: "agneshkoSGrah",
    timeToCook: "45мин"),
    Recipe(
    name: "Запечен бос с домати и бекон",
    ingredientsAll: """
1,2 кг бял боб от консерва (3 х 400 г)
400 г домати на кубчета от консерва
1/2 глава лук
4 скилидки чесън
200 г бекон „Панчета”
2 ч. ч. телешки бульон
1 с. л. зехтин
4 с. л. мед
1/4 ч. ч. доматен концентрат
5–6 листа салвия
1 ч. л. сухо чили
сол на вкус
""",
    img: "zapechenBob",
    timeToCook: "1ч 30мин"),
Recipe(
name: "Тиквени Понички",
ingredientsAll:
    """
200 г тиква
150 г брашно
2 яйца
3 с. л. захар
2 ч. л. бакпулвер
1 ч. л. канела
1 щипка сол
олио за пържене
за поръсване:
индийско орехче
сух джинджифил
пудра захар
""",
img: "tikveniPonichki",
timeToCook: "30мин")
    ]
    
    //recipes.append(recipe1)
    
    //let data: [(recipeName: String, timeToPrepare: String)] = [
    //("Stewed pork", "1h 15min"),
    //("Mushroom soup", "45min"),
    //("Simple cake", "1h 15min"),
    //("Potato soup", "45min")
     //   ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.recipes.count
    }

    //let image = "recipe1.img"

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myRecipeCell", for: indexPath) as?
                MyTableViewCell else {
                    return UITableViewCell()
                }
        	
        let cellData = self.recipes[indexPath.row]
        
               
        cell.recipeName.text = cellData.name
        cell.recipeDetail.text = cellData.ingredientsAll
        cell.timeToCook.text = cellData.timeToCook
        cell.recipePicture.image = UIImage(named: cellData.img)
        return cell
    }
    	
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else {
            return
        }
    }
   /* var anImage: UIImage?
    var aTextLabel: String?
    var aDetailsLabel: String?
    var aTime: String?
    
    switch indexPath.section {
    case recipe:
        aTextLabel = recipes[IndexPath.row].name
        aDetailsLabel recipes[IndexPath.row].description
        aTime = recipes[IndexPath.row].timeToCook
        anImage = recipes[IndexPath.row].recipePicture
    default:
        break
    }
    
    DetailsViewController.detailsImage = UIImage(named: anImage)
    DetailsViewController.DetailsLabel = aTextLabel
    DetailsViewController.DetailsTimeToCook = aTime
    DetailsViewController.DetailsIngredients = aDetailsLabel
    
    self.navigationController?.pushViewController(DetailsViewController, animated: true)
    */
    
    //DetailsViewController.imageForImageView

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

     //In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailsSegue",
           let detailsViewController = segue.destination as?	 DetailsViewController,
           let cellSender = sender as? MyTableViewCell
    {
            //print(sender)
            detailsViewController.loadViewIfNeeded()
            
            detailsViewController.detailsImage.image = cellSender.recipePicture?.image
            detailsViewController.DetailsIngredients.text = cellSender.recipeDetail?.text
            detailsViewController.DetailsLabel.text = cellSender.recipeName?.text
            detailsViewController.DetailsTimeToCook.text = cellSender.timeToCook?.text
        }
    }


}
