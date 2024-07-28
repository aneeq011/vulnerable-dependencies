using System;
using Newtonsoft.Json;

namespace SCATest
{
    class Program
    {
        static void Main(string[] args)
        {
            var json = JsonConvert.SerializeObject(new { Name = 'Hello, World!' });
            Console.WriteLine(json);
        }
    }
}
