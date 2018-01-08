using MLSOBJ;
using System;
using System.Data;

namespace MLSDAL
{
    public class EstateDAL : DBAcces
    {
        public void SaveSate(EstateOBJ estateOBJ)
        {
            this.OpenConnection();
            try
            {
                string query = string.Format(@"INSERT INTO [dbo].[Estates] ([Calle], [Numero], [Piso]) VALUES ('{0}','{1}','{2}')",
                                             estateOBJ.Calle, estateOBJ.Numero, estateOBJ.Piso);
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
