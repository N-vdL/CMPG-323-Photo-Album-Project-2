using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace DigitalMarketing
{
    public partial class PhotoAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UploadPhotos();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(FileUpload1.HasFile)
                {
                    string file = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Photos/" + file));
                }
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
                image.Width = Unit.Pixel(100);
                image.Height = Unit.Pixel(100);
                image.Style.Add("padding", "5px");
                image.Click += new ImageClickEventHandler(image_Click);
                Panel1.Controls.Add(image);
            }
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
    }
}