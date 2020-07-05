using FundooModels.Notes;
using FundooRepository.NotesRepository;
using System;
using System.Collections.Generic;
using System.Text;

namespace FundooManager.NotesManager
{
    public class NotesManager : INotesManager
    {
        private INotesRepository repository = new NotesRepository();
        public string CreateNote(NotesModel model)
        {
            repository.Create(model);
            return "Note created Successfull";
        }
    }
}
