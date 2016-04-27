package ui;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import static org.junit.Assert.assertEquals;


/**
 *
 * @author cathlene
 */
public class AddMovieIT {
    
    private WebDriver driver;

	@Test
	public void test_Should_add_product_if_all_fields_are_filled_in_correclty_with_valid_title_duration_nameActor_firstNameActor(){
                 System.setProperty("webdriver.chrome.driver", "C://cathlene//KHL//2de jaar//2de semester//internetprogrammerenOrigin//chromedriver.exe");

		driver= new ChromeDriver();
		AddMoviePage addMoviePage= new AddMoviePage(driver);
		addMoviePage.setVoornaamActor("Johnny");
		addMoviePage.setAchternaamActor("Depp");
		addMoviePage.setDuration(121);
                addMoviePage.setTitle("Titanic");
		addMoviePage.save();
		assertEquals("movies", driver.getTitle());		
	}
}
