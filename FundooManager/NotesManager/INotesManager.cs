using FundooModels.Notes;
using System;
using System.Collections.Generic;
using System.Text;

namespace FundooManager.NotesManager
{
    public interface INotesManager
    {
        string CreateNote(NotesModel model);
    }
}
