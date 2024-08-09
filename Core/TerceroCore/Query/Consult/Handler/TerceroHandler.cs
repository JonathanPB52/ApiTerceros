namespace Core.TerceroCore.Query.Consult.Handler
{
    public class TerceroHandler
    {
        private readonly IMapper _mapper;
        private readonly ITerceroContrac _Itercero;
        public TerceroHandler(ITerceroContrac Itercero, IMapper mapper)
        {
            _Itercero = Itercero;
            _mapper = mapper;
        }

        public async Task<List<TerceroResponse>> GetTercero()
        {
            var resp = await _Itercero.GetTerceroConsultModels();
            var ListTercero = _mapper.Map<List<TerceroResponse>>(resp);
            return ListTercero;
        }
    }
}
