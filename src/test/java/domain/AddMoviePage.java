package domain;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 *
 * @author cathlene
 */
public class AddMoviePage {
    
   
	private WebDriver driver;
	private static final String URL="http://localhost:8080/movie-springMVC/movie/new.htm?";
	
	public AddMoviePage(WebDriver driver){
		this.driver=driver;
		driver.get(URL);
	}
	

	public void setVoornaamActor(String voornaam) {

		WebElement voornaamField= driver.findElement(By.id("actorVoornaam"));
		voornaamField.clear();
                voornaamField.sendKeys(voornaam);
		
	}

	public void setDuration(int duur) {
		WebElement duurField= driver.findElement(By.id("duur"));
		duurField.clear();
		String duurString= Integer.toString(duur);
		duurField.sendKeys(duurString);
	}
	public void setAchternaamActor(String achternaam) {

		WebElement achternaamField= driver.findElement(By.id("actorAchternaam"));
		achternaamField.clear();
                achternaamField.sendKeys(achternaam);
		
	}
        public void setTitle(String title) {

		WebElement titleField= driver.findElement(By.id("title"));
		titleField.clear();
                titleField.sendKeys(title);
		
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
