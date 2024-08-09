namespace Data.Models.ClientModelsDB.Command.Edit
{
    public class TerceroEditModels
    {
        public int Id { get; set; }
        public int IdMunicipio { get; set; }
        public int IdDepartamento { get; set; }
        public int IdParametro { get; set; }
        public string NombreTercero { get; set; }
        public string ApellidoTercero { get; set; }
        public string Edad { get; set; }
        public int IdUsuario { get; set; }
    }
}
