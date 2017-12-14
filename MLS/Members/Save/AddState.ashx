<%@ WebHandler Language="C#" Class="AddState" %>

using System;
using System.Web;
using MLSOBJ;
using MLSBLL;

public class AddState : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string calle = context.Request.QueryString["calle"];
        string numero = context.Request.QueryString["numero"];
        string piso = context.Request.QueryString["piso"];

        context.Response.ContentType = "text/plain";
        try
        {
            Save(calle, Convert.ToInt32(numero), piso);
            context.Response.Write("OK!");
        }
        catch
        {
            context.Response.Write("Error!");
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    public void Save(string calle, int numero, string piso)
    {
        StateOBJ stateOBJ = new MLSOBJ.StateOBJ
        {
            Calle = calle,
            Numero = numero,
            Piso = piso,
        };

        StateBLL stateBLL = new StateBLL();

        stateBLL.SaveSate(stateOBJ);
    }

}