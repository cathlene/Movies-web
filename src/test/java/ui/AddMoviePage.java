package ui;

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
import org.openqa.selenium.support.ui.Select;
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
	public void setDuration(int duur) {
		WebElement duurField= driver.findElement(By.id("duur"));
		duurField.clear();
		String duurString= Integer.toString(duur);
		duurField.sendKeys(duurString);
	}
	public void chooseActor() {
                WebElement mySelectElm = driver.findElement(By.id("slcRole")); 
                Select mySelect= new Select(mySelectElm);
                WebElement option = mySelect.getFirstSelectedOption();
		option.click();
		
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
