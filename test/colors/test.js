
var parent=document.getElementById('my_div');


lst = ['#F8F8F2',
'#424450',
'#343746',
'#282A36',
'#21222C',
'#191A21',
'#6272A4',
'#44475A',
'#424450',
'#8BE9FD',
'#50FA7B',
'#FFB86C',
'#FF79C6',
'#BD93F9',
'#FF5555',
'#F1FA8C']

lst2 = ['#F8F8F2',
'#424450',
'#343746',
'#282A36',
'#21222C',
'#191A21',
'#6272A4',
'#44475A',
'#424450',
'#8BE9FD',
'#50FA7B',
'#FFB86C',
'#75d8ff',
'#BD93F9',
'#FF5555',
'#75ffed']



//lst2 = ['#21222C',
//'#FF5555',
//'#50FA7B',
//'#F1FA8C',
//'#BD93F9',
//'#FF79C6',
//'#8BE9FD',
//'#F8F8F2',
//'#6272A4',
//'#FF6E6E',
//'#69FF94',
//'#FFFFA5',
//'#D6ACFF',
//'#FF92DF',
//'#A4FFFF',
//'#FFFFFF']


for (let i=0; i<lst.length; i++){
  var new_kid = document.createElement("div");
  new_kid.style.width = "300px";
  new_kid.style.height = "30px";
  new_kid.innerHTML += lst[i];
  new_kid.style.backgroundColor = lst[i];
  parent.appendChild(new_kid);
}





for (let j=0; j<lst2.length; j++){
  console.log('bruh');
  var new_kid = document.createElement("div");
  new_kid.style.width = "300px";
  new_kid.style.height = "30px";
  new_kid.innerHTML += lst2[j];
  new_kid.style.backgroundColor = lst2[j];
  parent.appendChild(new_kid);

}
// let kid=document.createEleement("div");