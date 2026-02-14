using NUnit.Framework;
using OpenQA.Selenium;
using Pages;
using Reqnroll;

namespace Steps
{
    [Binding]
    public class HomeSteps
    {
        private readonly HomePage _home;

        public HomeSteps(ScenarioContext context)
        {
            var driver = (IWebDriver)context["WEB_DRIVER"];
            _home = new HomePage(driver);
        }

        [Given(@"que o usuário acessa o portal de inscrições")]
        public void AcessarPortal()
        {
            _home.AcessarPortal();
        }

        [Then(@"deve visualizar o seletor de nível de ensino")]
        public void ValidarSeletor()
        {
            Assert.IsTrue(_home.SeletorNivelVisivel());
        }

        [Then(@"botão Privacidade")]
        public void ValidarPrivacidade()
        {
            Assert.IsTrue(_home.BotaoPrivacidadeVisivel());
        }
    }
}
