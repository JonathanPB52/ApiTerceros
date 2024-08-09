namespace Core.TerceroCore.Command.Create.Handler
{
    public class TerceroCreateHandler
    {
        private readonly IMapper _mapper;
        private readonly ITerceroContrac _Itercero;
        public TerceroCreateHandler(ITerceroContrac Itercero, IMapper mapper)
        {
            _Itercero = Itercero;
            _mapper = mapper;
        }

        public async Task<TerceroCreateResponse> CreateTercero(TerceroCreateRequest tercero)
        {
            var resp = await _Itercero.CreateTerceroConsultModels(tercero);
            TerceroCreateResponse response = new TerceroCreateResponse();
            response.Mensaje = resp;
            return response;
        }
    }
}
