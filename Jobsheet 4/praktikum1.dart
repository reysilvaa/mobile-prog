void main() {
  final List list = [null, null, null, null, null]; 
  list[1] = 'Moch Reynald Silva Baktiar'; 
  list[2] = '2241720203'; 
  
  assert(list.length == 5);
  assert(list[1] == 'Moch Reynald Silva Baktiar');
  assert(list[2] == '2241720203');

  print(list);
}
