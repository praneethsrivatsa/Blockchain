pragma solidity ^0.4.17 < 0.6.12;


contract ReportCard{
    
    string public student_name;
    uint public roll_no;
    uint sub1;
    uint sub2;
    uint sub3;
    uint sub4;
    string public status;
   
    //PASS OR FAIL DEPENDS ON MARKS AND I HAVE CONSIDERED <50% AS FAIL
    //WE DONT NEED TO ADD PASS OR FAIL,AUTOMATICALLY IT CALCULATES AND GIVES PASS OR FAIL
    
    function ReportCard(string name,uint roll,uint newsub1,uint newsub2,uint newsub3,uint newsub4)public{
        
       student_name=name;
       roll_no=roll;
       sub1=newsub1;
       sub2=newsub2;
       sub3=newsub3;
       sub4=newsub4;
       uint sum = newsub1+newsub2+newsub3+newsub4;
       if(sum<200)
       {
            status="FAIL"; 
       }
       else
       {
           status= "PASS";
       }
    }
    
    function getReport()public view returns(string,uint,uint,uint,uint,uint,string){
        
        return (student_name,roll_no,sub1,sub2,sub3,sub4,status);
   
    }
    
}
