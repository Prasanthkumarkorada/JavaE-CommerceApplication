package devops.tadigital;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import org.openqa.selenium.firefox.FirefoxOptions;

import devops.tadigital.IntegrationTest;

import org.junit.*;
import static org.junit.Assert.*;

import java.io.File;

import org.junit.experimental.categories.Category;

@Category(IntegrationTest.class)
public class LoginFunctionalTest {

	static WebDriver driver;

	@BeforeClass
	public static void setup() {
	//	driver = new ChromeDriver();
		// new FirefoxDriver();
				FirefoxBinary firefoxBinary = new FirefoxBinary();
        firefoxBinary.addCommandLineOptions("--headless");
        System.setProperty("webdriver.gecko.driver", "/usr/bin/geckodriver");
        FirefoxOptions firefoxOptions = new FirefoxOptions();
        firefoxOptions.setBinary(firefoxBinary);
        
        driver = new FirefoxDriver(firefoxOptions);
        }
	@AfterClass
	public static void cleanUp() {
		driver.quit();
	}

	@Test
	public void loginSuccess() {
        driver.get("http://localhost:5051/OnlineApplication/login");
        WebElement email = driver.findElement(By.name("f1"));
        WebElement pass = driver.findElement(By.name("f2"));
        WebElement button = driver.findElement(By.xpath("/html/body/div/div/div/form/div/button"));         
        email.sendKeys("test@gmail.com");
        pass.sendKeys("123");
        button.click();
        assertTrue(driver.getPageSource().contains("LoginSuccess"));
	}
	
	//@Test
	public void loginFail() {
        driver.get("http://localhost:5051/OnlineApplication/login");
        WebElement email = driver.findElement(By.name("f1"));
        WebElement pass = driver.findElement(By.name("f2"));
        WebElement button = driver.findElement(By.xpath("/html/body/div/div/div/form/div/button"));         
        email.sendKeys("test@gmail.com");
        pass.sendKeys("123");
        button.click();
        assertTrue(driver.getPageSource().contains("LoginForm"));
	}
	
	@Test
	public void registrationSuccess() {
        driver.get("http://localhost:5051/OnlineApplication/register");
        WebElement name = driver.findElement(By.name("f1"));
        WebElement email = driver.findElement(By.name("f2"));
        WebElement pass = driver.findElement(By.name("f3"));
        WebElement gender = driver.findElement(By.name("f4"));
        WebElement mobileno = driver.findElement(By.name("f5"));
        WebElement button = driver.findElement(By.xpath("/html/body/div/div/div/form/div/button"));
        name.sendKeys("test");
        email.sendKeys("test@gmail.com");
        pass.sendKeys("123");
        gender.sendKeys("male");
        mobileno.sendKeys("1234567890");
        button.click();
        assertTrue(driver.getPageSource().contains("Sign Up Successful."));
	}
	
	/*@Test
	public void forgotPasswordSuccess() 	{
        driver.get("http://localhost:5051/OnlineApplication/forgotpassword");      
        WebElement email = driver.findElement(By.name("email"));
        WebElement pass = driver.findElement(By.name("newpassword"));
        WebElement button = driver.findElement(By.xpath("/html/body/div/div/div/form/div/button"));
       
        pass.sendKeys("123");
        email.sendKeys("test@gmail.com");
        button.click();
        assertTrue(driver.getPageSource().contains("Forgot/Change Password"));
	}*/
}
