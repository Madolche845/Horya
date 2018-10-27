//
//  MainTableViewController.swift
//  Horya
//
//  Created by Mac on 27/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    //Data Set Array
    var image = ["1", "02_เทพทาโร", "03_ขิง", "04_ดีปลี", "05_หมาก", "06_ตาลตะโหนด", "07_ตะไคร้", "08_หมากผู้หมากเมีย", "09_ชะเอมเทศ", "10_ว่านกาบหอย", "11_ก้ามปูหลุด", "12_บานไม่รู้โรย", "13_ขมิ้ชัน", "14_เตยหอม", "15_ข่า", "16_กระชาย","17_เบี้ยผู้","18_หอยสังข์","19_ทองคำ","20_ดินประสิว"]
    
    var Name = ["ข่อย","เทพธาโร", "ขิง", "ดีปลี", "หมาก", "ตาลตะโหนด", "ตะไคร้", "หมากผู้หมากเมีย", "ชะเอมเทศ", "ว่านกาบหอย", "ขมิ้นชัน", "เตยหอม", "ข่า","เบี้ยผู้","เปลือกหอยสังข์","ทองคำบริสุทธิ์","ดินประสิว"]
    
    var Properties = ["แก้ท้องอืดท้องเฟ้อ, บำรุงธาต, ...", "แก้จุดเสียด, ขับลม, ...", "แก้โรคบิด, แก้อาหารท้องร่วง, ...", "แก้อาการริดสีดวงทวาร, ...", "แก้โรคบิด, ขับปัสสาวะ, ...","ขับปัสสาวะ","ขับปัสสาวะ","แก้ท้องเสีย, ...","ช่วยให้ชุ่มคอ, ...","แก้เจ็บคอ, แก้กระหายน้ำ, ...","แก้เจ็บคอ, แก้ไอ, ...","แก้ทางเดินปัสสาวะอักเสบ, ...","แก้ผดผื่นคัด, ...","แก้หัด, แก้อีสุกอีสัย, ...","ขับลม, รักษาโรคผิวหนัง, ....","รักษากลากเกลื้อน, ...","ขับลมในลำไส้, ขับปัสสาวะ, ...","แก้โรคดีซ่าน, ...","แก้อักเสบ, ต้านอนุมูลอิสระ, ...","ถอนพิษ, ขับลม, ..."]
    
    
    
    var Scientific_name = ["Streblus asper", "Cinnamomum cassia", "Zingiber officinale", "Piper longum", "Glycyrrhiza glabra", "Tradescantia spathacea", "Tradescantia zebrina", "Gomphrena globosa", "Areca catechu Linn", "Borassus flabellifer Linn", "Cymbopogon citratus", "Cordyline fruticosa", "Curcuma longa", "Pandanus amaryllifolius", "Alpinia galanga", "Boesenbergia rotunda","Cypraea obvelata Lamarck","Charonia tritonis","aurum","potassium nitrate"]
    
    var dataPropertiesOne = [
        "ใบ – นำไปชงน้ำร้อนดื่มเพื่อช่วยระบาย หรือบำรุงธาตุ แก้ปวดเมื่อย ขับผายลม แก้อาการท้องอืดท้องเฟ้อ รวมทั้งช่วยแก้อาการปวดท้องจากประจำเดือน และยังสามารถนำไปตำผสมข้าวสารคั้นน้ำดื่มครึ่งถ้วยชา ช่วยให้อาเจียนเพื่อถอนพิษยาเมายาเบื่อ หรืออาหารแสลง ให้รสเมาเฝื่อน",
        "เนื้อไม้ – ช่วยในการแก้ลมจุกเสียด ขับลมในกระเพาะอาหารและลำไส้ แก้อาการแน่นเฟ้อ รวมทั้งแก้อาการปวดท้อง ช่วยในการขับผายลม ทำให้เรอ และใช้บำรุงธาตุ ตลอดจนสามารถนำมาฝนกับเปลือกหอยขม น้ำซาวข้าวดำก้นยา แก้อาการไข้สะอึก ให้รสเผ็ดร้อนหอม",
        "เหง้า – ช่วยในการกระตุ้นการบีบตัวของกระเพาะอาหารและลำไส้ ช่วยขับเสมหะ แก้โรคบิด ช่วยเจริญอากาศธาตุ ตลอดจนขับลม ช่วยแก้ท้องอืด จุกเสียด แน่นท้อง หอบไอ และคลื่นไส้อาเจียน ให้รสหวานเผ็ดร้อน",
        "เถา – ช่วยลดอาการเกร็งของกล้ามเนื้อเรียบ รวมทั้งช่วยให้เจริญอาหาร แก้ลม แก้อาการริดสีดวงทวาร แก้ปวดท้อง จุกเสียด และแก้ปวดฟัน แก้เสมหะพิการ ให้รสเผ็ดร้อน",
        "ราก – ช่วยบำรุงปอด ทำให้ชุ่มคอ แก้อาการน้ำลายเหนียว แก้เสมหะเป็นพิษ ทำให้เสมหะงวด รวมทั้งช่วยแก้พิษ คั่วแล้วแก้อาการเบื่ออาหาร อ่อนเพลีย เป็นไข้ ไอ หรือปวดท้อง ช่วยสงบประสาท แก้ดีและโลหิต ตลอดจนบำรุงกล้ามเนื้อให้เจริญเติบโตได้ดี ให้รสหวานขมชุ่ม",
        "ใบ – แก้เจ็บคอ แก้ไอ แก้กระหายน้ำ แก้ฟกช้ำภายใน",
        "ต้นและใบ – แก้เจ็บคอ แก้ไอ แก้กระหายน้ำ แก้ฟกช้ำภายใน",
        "ราก - แก้โรคระบบทางเดินปัสสาวะอักเสบ ขับระดู รักษาโรคบิดและอาการไอ รสเย็นขื่น",
        "ราก - ต้มแก้โรคบิด เป็นยาขับปัสสาวะ",
        "ช่อดอกตัวผู้ – ให้น้ำตาล เป็นยาขับปัสสาวะ",
        "น้ำมันจากใบและต้น - ใช้แต่งกลิ่นอาหาร สบู่ เครื่องสำอางค์",
        "เหง้า – แก้ท้องเสีย แก้บิด",
        "ผงขมิ้น – ช่วยแก้เม็ดผดผื่นคันบริเวณผิวหนังได้ โดยการนำไปเคี่ยวกับน้ำมันพืชแล้วผสมน้ำเพื่อทาผิวบริเวณที่มีผดผื่นคัน หรือใช้สำหรับแผลสดก็ได้",
        "ใบ – ตำพอกรักษาโรคหัดโรคผิวหนัง อีสุกอีใส ",
        "เหง้า – เป็นเครื่องเทศ ขับลม ใช้รักษาโรคผิวหนัง",
        "เหง้าและราก –  แต่งกลิ่นอาหาร แก้ปวดท้อง แก้ไอ รักษากลากเกลื้อน",
        "โบราณเอาเบี้ยผู้มาเผาให้โชน ผสมกับพิมเสนอย่างดี ใช้โรยแผล กัดฝ้าละออง หรือใช้กินเป็นยาขับลมในลำไส้ ขับปัสสาวะ แก้ไตพิการ",
        "สรรพคุณ ใช้เป้นยาภายในแก้ราคสาด หนองใน ปวดมวนในท้องและโรคดีซ่าน",
        "การรักษาโรค ทองคำมีฤทธิ์ต้านอาการอักเสบและบวมช้ำ และ สามารถต้านอนุมูลอิสระที่เกิดขึ้นจากข้อกระดูกอักเสบ ช่วยบรรเทาความเจ็บปวดได้จริง",
        "ใช้เป็นผสมของยาสีฟัน เพื่อลดอาการเสียวฟัน"]

    var dataPropertiesTwo = [
        "เมล็ด – เป็นยาอายุวัฒนะ ช่วยขับผายลม และบำรุงธาตุเจริญอาหาร รวมทั้งอาการท้องอืดท้องเฟ้อ แก้อาการโลหิตและลม ให้รสเมามันร้อน",
        "ยาง – ช่วยในการขับถ่ายพยาธิ และถ่ายน้ำเหลืองเสีย และถ่ายอย่างแรง ให้รสร้อน",
        "ต้น – ช่วยแก้อาการท้องร่วงหรือจุกเสียด ช่วยขับลมให้ผายเรอ ให้รสเผ็ดร้อน",
        "ราก – ช่วยแก้อาการลำไส้ใหญ่อักเสบ บำรุงธาตุ แก้เสมหะ แก้อาการปวดท้อง รวมทั้งแก้เป็นลมวิงเวียน แก้หืดไอ ช่วยดับพิษปัตคาด และแก้เส้นอัมพฤกษ์อัมพาต ให้รสเผ็ดร้อนขม",
        "",
        "",
        "",
        "ทั้งต้น - ต้มเอาน้ำดื่มแก้หนองใน กามโรค ขับปัสสาวะ นิ่ว และแก้ระดูขาว รสขื่นเล็กน้อย",
        "",
        "ราก – นำมาต้มช่วยขับปัสสาวะ",
        "ใบและต้น – เป็นยาขับปัสสาวะอย่างอ่อน ให้ประจำเดือนมาปกติ",
        "ใบ – แก้บิด",
        "ขมิ้นสด – นำไปตำผสมกับดินประสิวเพียงเล็กน้อย และน้ำปูนใส ใช้สำหรับพอกบาดแผล และแก้อาการเคล็ดขัดยอกได้ดี หรือสามารถนำมารับประทานแก้ท้องร่วง หรือบิด โดยการนำไปเผาไฟแล้วโขลกผสมกับน้ำปูนใสรับประทาน",
        "",
        "",
        "",
        "",
        "",
        "การลดริ้วรอย ทองคำช่วยต้านอนุมูลอิสระ มีผลต่อการบรรเทาอาการอักเสบของกระดูก อาการบวมช้ำ ซึ่งทองคำสามารถต้านการอักเสบจากการรับรังสียูวีของผิวหนัง ได้ ทองคำจึงถูกนำมาใช้เป็นส่วนผสมในเครื่องสำอางต่างๆ",
        "ใช้เป็นส่วนผสมในตำรับยาแผนโบราณ ช่วยถอนพิษ และ ช่วยขับลม"]
    //End Value Data Set Array -------------------------------------------------
    
    //Start Page Main
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Name.count
    }
    
    //Show Datas
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainTableViewCell
        
        // Configure the cell...
        cell.ImageOneView.image = UIImage(named: image[indexPath.row])
        cell.name.text = Name[indexPath.row]
        cell.properties.text = Properties[indexPath.row]

        return cell
        
    }
    
    //Next Page Show Datas
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailsViewController

//                destinationController.restaurantImageName = restaurantImages[indexPath.row]
                destinationController.name = Name[indexPath.row]
//                destinationController.properties = Properties[indexPath.row]
                destinationController.ScientificName = Scientific_name[indexPath.row]
                destinationController.DataPropertiesOne = dataPropertiesOne[indexPath.row]
                destinationController.DataPropertiesTwo = dataPropertiesTwo[indexPath.row]
            }
        }
    }

}
