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

        [Given(@"que o usuário está na página inicial")]
        public void UsuarioNaPaginaInicial()
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

        [Then(@"botão home")]
        public void ValidarBotaoHome()
        {
            Assert.IsTrue(_home.BotaoHomeVisivel());
        }

        [Then(@"opções de tema")]
        public void ValidarOpcoesTema()
        {
            Assert.IsTrue(_home.OpcoesTemaVisivel());
        }

        [Then("logotipo +a")]
        public void ValidarLogo()
        {
            Assert.IsTrue(_home.LogoVisivel());
        }

        [Then(@"botão Portal de inscrições")]
        public void ValidarBotaoPortal()
        {
            Assert.IsTrue(_home.BotaoPortalVisivel());
        }
    }
}
