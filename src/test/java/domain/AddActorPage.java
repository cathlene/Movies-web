package domain;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

/**
 *
 * @author cathlene
 */
public class AddActorPage {
    

	private WebDriver driver;
	private static final String URL="http://localhost:8080/movie-springMVC/actor/new.htm?";
	
	public AddActorPage(WebDriver driver){
		this.driver=driver;
		driver.get(URL);
	}
	

	public void setVoornaam(String voornaam) {

		WebElement voornaamField= driver.findElement(By.id("voornaam"));
		voornaamField.clear();
                voornaamField.sendKeys(voornaam);
		
	}

	public void setAge(int age) {
		WebElement ageField= driver.findElement(By.id("age"));
		ageField.clear();
		String ageString= Integer.toString(age);
		ageField.sendKeys(ageString);
	}
	public void setAchternaam(String achternaam) {

		WebElement achternaamField= driver.findElement(By.id("naam"));
		achternaamField.clear();
                achternaamField.sendKeys(achternaam);
		
	}

	public boolean containsElementWithId(String string){
		
		WebElement element= driver.findElement(By.id(string));
		return element!=null;
		
	}
	public void save() {
		WebElement addProductButton= driver.findElement(By.id("submit"));
		addProductButton.click();
	}

    
}
