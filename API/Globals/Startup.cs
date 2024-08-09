
namespace API.Globals
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<ITerceroContrac, TerceroBuisness>();
            services.AddTransient<TerceroHandler>();
            services.AddTransient<TercerosForaneasHandler>();
            services.AddTransient<TerceroCreateHandler>();
            services.AddTransient<TerceroDeleteHandler>();
            services.AddTransient<TerceroEditHandler>();
            services.AddTransient<IContextDB, ContextDB>();
        }
    }
}
