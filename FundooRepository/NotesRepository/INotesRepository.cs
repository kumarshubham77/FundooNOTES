using FundooModels.Notes;
using System;
using System.Collections.Generic;
using System.Text;

namespace FundooRepository.NotesRepository
{
    public interface INotesRepository
    {
        bool Create(NotesModel notes);

    }
}
