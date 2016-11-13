using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CompleteASPNetExample.Startup))]
namespace CompleteASPNetExample
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
