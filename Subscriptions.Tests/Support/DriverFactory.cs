using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Edge;
using OpenQA.Selenium.Firefox;

namespace Support
{
    public class DriverFactory
    {
        public static IWebDriver CreateDriver(string browser)
        {
            return browser.ToLower() switch
            {
                "chrome" => new ChromeDriver(),
                "edge" => new EdgeDriver(),
                "firefox" => new FirefoxDriver(),
                _ => new ChromeDriver()
            };
        }
    }
}
