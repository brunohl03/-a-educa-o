using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using SeleniumExtras.WaitHelpers;
using System;

namespace Pages
{
    public class HomePage
    {
        private readonly IWebDriver _driver;
        private readonly WebDriverWait _wait;

        public HomePage(IWebDriver driver)
        {
            _driver = driver;
            _wait = new WebDriverWait(_driver, TimeSpan.FromSeconds(10));
        }

        public void AcessarPortal()
        {
            _driver.Navigate().GoToUrl("COLOQUE_A_URL_REAL_AQUI");
        }

        public bool SeletorNivelVisivel()
        {
            try
            {
                var elemento = _wait.Until(
                    ExpectedConditions.ElementIsVisible(By.Id("seletorNivel"))
                );
                return elemento.Displayed;
            }
            catch
            {
                return false;
            }
        }

        public bool BotaoPrivacidadeVisivel()
        {
            try
            {
                var elemento = _wait.Until(
                    ExpectedConditions.ElementIsVisible(By.Id("btnPrivacidade"))
                );
                return elemento.Displayed;
            }
            catch
            {
                return false;
            }
        }
    }
}
