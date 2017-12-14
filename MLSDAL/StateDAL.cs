using MLSOBJ;
using System;
using System.Data;

namespace MLSDAL
{
    public class StateDAL : DBAcces
    {
        public void SaveSate(StateOBJ stateOBJ)
        {
            this.OpenConnection();
            try
            {
                string query = string.Format(@"INSERT INTO [dbo].[Inmuebles] ([Calle], [Numero], [Piso]) VALUES ('{0}','{1}','{2}')",
                                             stateOBJ.Calle, stateOBJ.Numero, stateOBJ.Piso);
                this.ExecuteTable(query, CommandType.Text, "");
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.CloseConnection();
            }
        }
    }
}
