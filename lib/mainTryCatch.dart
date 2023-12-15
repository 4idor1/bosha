void main(List<String> args) {
   try{
        int x = 9;
        int y = 0;
        int z = x ~/ y;
      
        print(z);
    }
    catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}