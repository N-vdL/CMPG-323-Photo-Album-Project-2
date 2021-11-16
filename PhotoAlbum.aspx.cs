using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DigitalMarketing
{
    public partial class PhotoAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //Label1.Visible = false;
                //HyperLink2.Visible = false;

                //LoadImages();
            }

            UploadPhotos();
        }

        //private void LoadImages()
        //{
        //    string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        //    using (SqlConnection conn = new SqlConnection(cs))
        //    {
        //        SqlCommand cmd = new SqlCommand("Select * From Table", conn);
        //        conn.Open();
        //        SqlDataReader reader = cmd.ExecuteReader();
        //        GridView1.DataSource = reader;
        //        GridView1.DataBind();
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string file = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Photos/" + file));
                }

                //HttpPostedFile postedFile = FileUpload1.PostedFile;

                //string fileName = Path.GetFileName(postedFile.FileName);
                //string fileExtension = Path.GetExtension(fileName);

                //int fileSize = postedFile.ContentLength;

                //if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                //    || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".png"
                //    || fileExtension.ToLower() == ".jpeg")
                //{
                //    Stream stream = postedFile.InputStream;
                //    BinaryReader binary = new BinaryReader(stream);
                //    Byte[] bytes = binary.ReadBytes((int)stream.Length);

                //    string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                //    using (SqlConnection conn = new SqlConnection(cs))
                //    {
                //        SqlCommand cmd = new SqlCommand("spUploadImage", conn);
                //        cmd.CommandType = CommandType.StoredProcedure;

                //        SqlParameter paramName = new SqlParameter();
                //        {
                //            ParamaterName = @"Name";
                //            Value = fileName;
                //        };
                //        cmd.Parameters.Add(paramName);

                //        SqlParameter paramSize = new SqlParameter();
                //        {
                //            ParamaterName = @"Size";
                //            Value = fileSize;
                //        };
                //        cmd.Parameters.Add(paramSize);

                //        SqlParameter paramImageData = new SqlParameter();
                //        {
                //            ParamaterName = @"ImageData";
                //            Value = bytes;
                //        };
                //        cmd.Parameters.Add(paramImageData);

                //        SqlParameter paramImageData = new SqlParameter();
                //        {
                //            ParamaterName = @"NewId";
                //            Value = -1;
                //            Direction = ParameterDirection.Output;
                //        };
                //        cmd.Parameters.Add(paramNewId);

                //        conn.Open();
                //        cmd.ExecuteNonQuery();
                //        conn.Close();

                //        Label1.Visible = true;
                //        Label1.Text = "Upload Successful!";
                //        HyperLink2.Visible = true;
                //        HyperLink2.NavigateUrl = "~/Gallery.aspx?Id=" + cmd.Parameters["@NewId"].Value.ToString();

                //        LoadImages();
                //    }
                //}

                //else
                //{
                //    Label1.Visible = true;
                //    Label1.Text = "Only Images With The Correct Extension (.bmp, .gif, .jpg, .jpeg, .png) Can Be Uploaded!";
                //    HyperLink2.Visible = false;
                //}

            }

            catch (FileNotFoundException ex)
            {
                Console.WriteLine("Please make sure that {0} exists.", ex.FileName);
            }

            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine();
                Console.WriteLine();
                Console.WriteLine(ex.StackTrace);
            }
        }

        private void UploadPhotos()
        {
            foreach (string stringFile in Directory.GetFiles(Server.MapPath("~/Photos/")))
            {
                ImageButton image = new ImageButton();
                FileInfo info = new FileInfo(stringFile);
                image.ImageUrl = "~/Photos/" + info.Name;
                image.Width = Unit.Pixel(300);
                image.Height = Unit.Pixel(300);
                image.Style.Add("padding", "5px");
                image.Click += new ImageClickEventHandler(image_Click);
                Panel1.Controls.Add(image);
            }
            Panel1.Visible = true;
        }

        void image_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("~/Gallery.aspx?ImageURL=" + ((ImageButton)sender).ImageUrl);
            }
            
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}