namespace Core.TerceroCore.Command.Edit.Handler
{
    public class TerceroEditHandler
    {
        private readonly IMapper _mapper;
        private readonly ITerceroContrac _Itercero;
        public TerceroEditHandler(ITerceroContrac Itercero, IMapper mapper)
        {
            _Itercero = Itercero;
            _mapper = mapper;
        }

        public async Task<TerceroEditResponse> CreateTercero(TerceroEditRequest tercero)
        {
            var resp = await _Itercero.EditTerceroConsultModels(tercero);
            TerceroEditResponse response = new TerceroEditResponse();
            response.Mensaje = resp;
            return response;
        }
    }
}
