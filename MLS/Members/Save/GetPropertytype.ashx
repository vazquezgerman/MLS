<%@ WebHandler Language="C#" Class="GetPropertytype" %>

using System.Web;
using MLSBLL;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

public class GetPropertytype : IHttpHandler
{
    PropertytypeBLL propertytypeBLL;

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        context.Response.Write(Getpropertytype());
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    public string Getpropertytype()
    {
        propertytypeBLL = new PropertytypeBLL();

        string json = JsonConvert.SerializeObject(propertytypeBLL.GetPropertytype(), new DataSetConverter());

        return json;
    }

}