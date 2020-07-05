using FundooModels.Notes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace FundooRepository.NotesRepository
{
    public class NotesRepository : INotesRepository
    {
        private SqlConnection con = null;
        string constr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=fundoodb;Integrated Security=True;";

        public void Conncetion()
        {
            //constr = configration.GetSection("Data").GetSection("ConnectionString").Value;
            con = new SqlConnection(constr);
        }
        public bool Create(NotesModel notes)
        {
            Conncetion();
            SqlCommand sqlCommand = new SqlCommand("Notescreated", con);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@email", notes.Email);
            sqlCommand.Parameters.AddWithValue("@title", notes.Title);
            sqlCommand.Parameters.AddWithValue("@descriptions", notes.Description);
            sqlCommand.Parameters.AddWithValue("@images", notes.Images);
            sqlCommand.Parameters.AddWithValue("@reminder", notes.Reminder);
            sqlCommand.Parameters.AddWithValue("@isarchive", notes.IsArchive);
            sqlCommand.Parameters.AddWithValue("@istrash", notes.IsTrash);
            sqlCommand.Parameters.AddWithValue("@ispin", notes.IsPin);
            sqlCommand.Parameters.AddWithValue("@iscolor", notes.IsColor);
            con.Open();
            // Using ExecuteNonQuery it will return 1 for Insert,Delete and Update else it will return -1. 
            int i = sqlCommand.ExecuteNonQuery();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
