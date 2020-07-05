using FundooModels.Notes;
using FundooRepository.NotesRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace WebApplication1.Controllers
{
    public class NotesController : Controller
    {
        private INotesRepository repository = new NotesRepository();
        // GET: Notes
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateNote(NotesModel model)
        {
            var result = this.repository.Create(model);
            return Json(HttpStatusCode.OK);
        }
    }
}