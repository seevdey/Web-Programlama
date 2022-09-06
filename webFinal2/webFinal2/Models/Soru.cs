using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace webFinal2.Models
{
    public class Soru
    {
        private List<Sorular2> question = new List<Sorular2>();

        public List<Sorular2> soruList {get { return question; }}

        public void cevapGetir(Sorular2 answer)
        {
            if (answer != null)
            {
                question.Add(new Sorular2()
                {
                    question1 = answer.question1,
                    question2 = answer.question2,
                    question3 = answer.question3,
                    question4 = answer.question4,
                    text = answer.text
                });
            }
        }
    }

    public class Sorular2
    {
        public string question1 { get; set; }
        public string question2 { get; set; }
        public string question3 { get; set; }
        public string question4 { get; set; }

        [Required(ErrorMessage = "zorunlu doldurulması gereken alan")]
        public string text { get; set; }
    }
}