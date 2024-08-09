namespace API.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class TerceroController : ControllerBase
    {
        private readonly TerceroHandler _terceroHandler;
        private readonly TerceroCreateHandler _terceroCreateHandler;
        private readonly TerceroEditHandler _terceroEditHandler;
        private readonly TerceroDeleteHandler _terceroDeleteHandler;
        public TerceroController(TerceroHandler terceroHandler, 
            TerceroCreateHandler terceroCreateHandler, 
            TerceroEditHandler terceroEditHandler, 
            TerceroDeleteHandler terceroDeleteHandler)
        {
            _terceroHandler = terceroHandler;
            _terceroCreateHandler = terceroCreateHandler;
            _terceroEditHandler = terceroEditHandler;
            _terceroDeleteHandler = terceroDeleteHandler;
        }

        [HttpGet]
        public async Task<List<TerceroResponse>> Get()
        {
            var response = await _terceroHandler.GetTercero();
            return response;
        }

        [HttpPost]
        public async Task<TerceroCreateResponse> Post(TerceroCreateRequest request)
        {
            var response = await _terceroCreateHandler.CreateTercero(request);
            return response;
        }

        [HttpPut]
        public async Task<TerceroEditResponse> put(TerceroEditRequest request)
        {
            var response = await _terceroEditHandler.CreateTercero(request);
            return response;
        }

        [HttpDelete]
        public async Task<TerceroDeleteResponse> Delete(TerceroDeleteRequest request)
        {
            var response = await _terceroDeleteHandler.DeleteTercero(request);
            return response;
        }
    }
}
