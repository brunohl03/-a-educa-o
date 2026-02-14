using OpenQA.Selenium;
using Reqnroll;
using Support;

namespace Subscriptions.Tests.Support
{
    [Binding]
    public class Hooks
    {
        private readonly ScenarioContext _scenarioContext;
        private IWebDriver? _driver;

        public Hooks(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        [BeforeScenario]
        public void BeforeScenario()
        {
            _driver = DriverFactory.CreateDriver("chrome");

            _scenarioContext["WEB_DRIVER"] = _driver;
        }

        [AfterScenario]
        public void AfterScenario()
        {
            _driver?.Quit();
            _driver?.Dispose();
        }
    }
}
