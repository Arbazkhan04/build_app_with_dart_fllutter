class Product {
   String name;
   int price;
   int ratting;
   String city;
   Product(this.name,this.price,this.ratting,this.city);
}

class ProductDL {
  static List<Product> productList = [];

  static addProduct(Product p){
    productList.add(p);
  }

  List<Product> getAllProduct(){
    return productList;
  }

  List<Product> showAllProductByName(String name){
    List<Product> p = [];
    for(int i=0;i<productList.length;i++){
        if(productList[i].name == name){
           p.add(productList[i]);
        }
    }
    return p;
  }

   List<Product> showAllProductByPrice(int Price){
    List<Product> p = [];
    for(int i=0;i<productList.length;i++){
        if(productList[i].price == Price){
           p.add(productList[i]);
        }
    }
    return p;
  }

   List<Product> showAllProductByRatting(String ratting){
    List<Product> p = [];
    for(int i=0;i<productList.length;i++){
        if(productList[i].ratting == ratting){
           p.add(productList[i]);
        }
    }
    return p;
  }

   List<Product> showAllProductByCity(String city){
    List<Product> p = [];
    for(int i=0;i<productList.length;i++){
        if(productList[i].city == city){
                p.add(productList[i]);
        }
    }
    return p;
  }
}

void main(){
    ProductDL productDL = ProductDL();

     Product p0 = Product('fruit', 12, 5, 'lahore');
     Product p1 = Product('apple', 14, 4, 'Karachi');
     Product p2 = Product('fruit', 12, 5, 'Peshawar');

     ProductDL.addProduct(p0);
     ProductDL.addProduct(p1);
     ProductDL.addProduct(p2);

    
  // Retrieve all products and print them
  List<Product> allProducts = productDL.getAllProduct();
  showProduct(allProducts);
  // show product by name 
  List<Product> byName = productDL.showAllProductByName('fruit');

  if(byName.length==0){
      print('no item is found');
  }
  else{
      showProduct(byName);
  }
}

void showProduct(List<Product> allProducts){
  for (int i = 0; i < allProducts.length; i++) {
    print('Product ${i + 1}:');
    print('Name: ${allProducts[i].name}');
    print('Price: ${allProducts[i].price}');
    print('Rating: ${allProducts[i].ratting}');
    print('City: ${allProducts[i].city}');
    print('');
  } 
}