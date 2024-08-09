namespace API.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ForaneasController : ControllerBase
    {
        private readonly TercerosForaneasHandler _tercerosForaneasHandler;
        public ForaneasController(TercerosForaneasHandler tercerosForaneasHandler)
        {
            _tercerosForaneasHandler = tercerosForaneasHandler;
        }

        [HttpGet]
        public async Task<TercerosForaneasResponse> Get()
        {
            var response = await _tercerosForaneasHandler.GetTerceroForaneas();
            return response;
        }
    }
}
