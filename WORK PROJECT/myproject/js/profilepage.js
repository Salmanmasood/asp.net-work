/*var array1 = [];
var tr;
var index;
//a function for inserting values in array
function todo() {
var inputData = document.getElementById("input").value;
if(inputData == "" || inputData ==" ")
{
    alert ('enter name');
}
else
{
    array1.push(inputData);
}

document.getElementById("input").focus();
};
showtbl();
//a function for showing our table data
    function showtbl()
{
var data =[];
for(var i = 0; i < array1.length; i++)
{
    data += "<tr><td>"+ (i+1) +"</td>"+"<td>"+ array1[i] +"</td><td><a href='javascript:void(0);'"+
    "onClick='remove(this)'>"+
    "<button type='button' class='close' aria-hidden='true'> &times; </button></a></td></tr>" ;
    document.getElementById("todo_list").innerHTML= data;
    
}


data = " ";
document.getElementById("input").value = " "; 

};

 function remove(row)
     {
 
     tr = row.parentElement.parentElement;
     //document.write(tr);
   //  index = tr.rowIndex-1;
    // array1.splice(index,tr);
     row.parentElement.removeChild(row);
      //showtbl();
      data=[];
 };


 function removed(row){

document.getElementById("todo_list").innerHTML=data=[row-1];
data[];

 }*/
 