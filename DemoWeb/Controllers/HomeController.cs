using IBLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using System.Web;
using System.Web.Mvc;
using WebHelper;

namespace DemoWeb.Controllers
{
    public class HomeController : BaseController
    {
        //
        // GET: /Home/

        public HomeController(IPhoneBookBLL pbBll)
        {
            base.phoneBookBLL = pbBll;
        }

        public ActionResult Index()
        {
            using (var trans = new TransactionScope())
            {
                string id = Guid.NewGuid().ToString("N");
                PhoneBook book = new PhoneBook() { Id = id, Name = "wdq", Phone = "15807162700", Remark = "asdasas" };
                this.phoneBookBLL.Add(book);
                phoneBookBLL.SaveChanges();
                trans.Complete();
            }
            return Content("新增成功!");
        }

        public ActionResult Test(string id)
        {
            using (var trans = new TransactionScope())
            {
                var model = phoneBookBLL.QueryWhere(m => m.Id == id).FirstOrDefault();

                model.Id = Guid.NewGuid().ToString("N");
                model.Name = "11111111111";
                model.Phone = "15975332839";
                model.Remark = "查看是否删除原来的那个00000000000";
                phoneBookBLL.Add(model);
                phoneBookBLL.SaveChanges();

            }
            return Content("成功!");
        }

    }
}
