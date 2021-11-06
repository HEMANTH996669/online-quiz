var res = 0;

function start(n) {
  switch(n) {
    case 0:document.getElementById("welcome").style.display = "none";
           document.getElementById('Q1').style.display = "block";
      break;

    case 1:if(document.myform1.options[2].checked)
              res++;
           document.getElementById("Q1").style.display = "none";
           document.getElementById('Q2').style.display = "block";
      break;

    case 2:if(document.myform2.options[3].checked)
              res++;
           document.getElementById("Q2").style.display = "none";
           document.getElementById('Q3').style.display = "block";
      break;

    case 3:if(document.myform3.options[1].checked)
               res++;
           document.getElementById("Q3").style.display = "none";
           document.getElementById('Q4').style.display = "block";
      break;

    case 4:if(document.myform4.options[2].checked)
               res++;
           document.getElementById("Q4").style.display = "none";
           document.getElementById('Q5').style.display = "block";
      break;

    case 5:if(document.myform5.options[1].checked)
               res++;
           document.getElementById("Q5").style.display = "none";
           document.getElementById('Q6').style.display = "block";
      break;

    case 6:if(document.myform6.options[0].checked)
                res++;
            document.getElementById("Q6").style.display = "none";
            document.getElementById('Q7').style.display = "block";

      break;

    case 7:if(document.myform7.options[0].checked)
                res++;
            document.getElementById("Q7").style.display = "none";
            document.getElementById('Q8').style.display = "block";

      break;

    case 8:if(document.myform8.options[0].checked)
                res++;
            document.getElementById("Q8").style.display = "none";
            document.getElementById('Q9').style.display = "block";

      break;

    case 9:if(document.myform9.options[1].checked)
                res++;
            document.getElementById("Q9").style.display = "none";
            document.getElementById('Q10').style.display = "block";


      break;

    case 10:if(document.myform10.options[1].checked)
                res++;
            document.getElementById("Q10").style.display = "none";
            document.getElementById("Score").style.display="block";
            if(res==10)
            document.getElementById('10').innerHTML="Congratulations";
            else if(res<6)
            document.getElementById('10').innerHTML="Need hard Work";
            else
            document.getElementById('10').innerHTML="Keep it up";
            document.getElementById('result').innerHTML=res;

      break;

   }

}