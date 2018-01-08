using MLSOBJ;
using System;
using System.Data;

namespace MLSDAL
{
    public class PropertytypeDAL : DBAcces
    {
        public DataTable GetPropertytype()
        {
            this.OpenConnection();
            try
            {
                string query = string.Format(@"SELECT [ID],
                                                      [Name] 
                                                      FROM [dbo].[Propertytype]");
                return this.ExecuteTable(query, CommandType.Text, "");
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
