using System;

namespace FinalExamJeffDavidson
{
    internal class MySqlConnection
    {
        private string connStr;

        public MySqlConnection(string connStr)
        {
            this.connStr = connStr;
        }

        internal void Open()
        {
            throw new NotImplementedException();
        }
    }
}