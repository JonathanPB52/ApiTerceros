namespace Buisness.Buisness
{
    public class TerceroBuisness : ITerceroContrac
    {
        private readonly IContextDB _contextDB;
        public TerceroBuisness(IContextDB contextDB)
        {
            _contextDB = contextDB;
        }
        public async Task<string> CreateTerceroConsultModels(TerceroCreateModels tercero)
        {
            using (_contextDB.Connection)
             {
                    try
                    {
                            _contextDB.Connection.Open();
                            var parameters = new DynamicParameters();
                            parameters.Add("@IdMunicipio", tercero.IdMunicipio);
                            parameters.Add("@IdDepartamento", tercero.IdDepartamento);
                            parameters.Add("@IdParametro", tercero.IdParametro);
                            parameters.Add("@NombreTercero", tercero.NombreTercero);
                            parameters.Add("@ApellidoTercero", tercero.ApellidoTercero);
                            parameters.Add("@Edad", tercero.Edad);
                            parameters.Add("@IdUsuario", tercero.IdUsuario);
                            var resp = await _contextDB.Connection.QueryAsync(
                                "[Dto].[RegistrarTercero]",
                                parameters,
                                commandType: CommandType.StoredProcedure
                            );
                                
                            return "Registro Exitoso";
                                
                        }
                    catch (Exception ex)
                        {
                            return $"Error: {ex.Message}";
                        }

             }
        }

        public async Task<string> DeleteTerceroConsultModels(int Id)
        {
            using (_contextDB.Connection)
            {
                try
                {
                    _contextDB.Connection.Open();
                    var parameters = new DynamicParameters();
                    parameters.Add("@Id", Id);

                    var result = await _contextDB.Connection.QuerySingleOrDefaultAsync<string>(
                        "[Dto].[EliminarTercero]",
                        parameters,
                        commandType: CommandType.StoredProcedure
                    );

                    return result;
                }
                catch (Exception ex)
                {
                    return $"Error: {ex.Message}";
                }
            }
        }

        public async Task<string> EditTerceroConsultModels(TerceroEditModels tercero)
        {
            using (_contextDB.Connection)
            {
                try
                {
                    _contextDB.Connection.Open();
                    var parameters = new DynamicParameters();
                    parameters.Add("@Id", tercero.Id);
                    parameters.Add("@IdMunicipio", tercero.IdMunicipio);
                    parameters.Add("@IdDepartamento", tercero.IdDepartamento);
                    parameters.Add("@IdParametro", tercero.IdParametro);
                    parameters.Add("@NombreTercero", tercero.NombreTercero);
                    parameters.Add("@ApellidoTercero", tercero.ApellidoTercero);
                    parameters.Add("@Edad", tercero.Edad);
                    parameters.Add("@IdUsuario", tercero.IdUsuario);

                    var result = await _contextDB.Connection.QuerySingleOrDefaultAsync<string>(
                        "[Dto].[EditarTercero]",
                        parameters,
                        commandType: CommandType.StoredProcedure
                    );

                    return result;
                }
                catch (Exception ex)
                {
                    return $"Error: {ex.Message}";
                }
            }
        }

        public async Task<TerceroConsutlForaneasModels> GetForaneasConsultModels()
        {
            using (var connection = _contextDB.Connection)
            {
                connection.Open();
                using (var multi = await connection.QueryMultipleAsync("[Dto].[ConsultarForaneas]", commandType: CommandType.StoredProcedure))
                {
                    var foraneas = new TerceroConsutlForaneasModels
                    {
                        Departamentos = (await multi.ReadAsync<DepartamentoModels>()).ToList(),
                        Municipios = (await multi.ReadAsync<MunicipioModels>()).ToList(),
                        Parametro = (await multi.ReadAsync<ParametroModels>()).ToList()
                    };

                    return foraneas;
                }
            }
        }

        public async Task<List<TerceroConsultModels>> GetTerceroConsultModels()
        {
            using (_contextDB.Connection)
            {
                _contextDB.Connection.Open();
                var ListForaneas = await _contextDB.Connection.QueryAsync<TerceroConsultModels>("[Dto].[ConsultarTercero]", commandType: CommandType.StoredProcedure);
                return ListForaneas.ToList();
            }
        }
    }
}
