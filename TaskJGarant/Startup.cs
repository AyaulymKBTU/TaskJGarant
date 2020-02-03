using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TaskJGarant.Startup))]
namespace TaskJGarant
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
