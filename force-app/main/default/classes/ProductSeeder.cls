public class ProductSeeder {
  public static void seed() {
    delete [SELECT Id FROM Product__c];

    List<Product__c> products = new List<Product__c>();

    for (Integer i = 1; i < 30; i++) {
      Integer price = Integer.valueOf((Math.random() * 10000) + 100);
      Integer inStock = Integer.valueOf((Math.random() * 100) + 10);

      products.add(
        new Product__c(
          Name = 'Product ' + i,
          ProductPrice__c = price,
          ProductLabel__c = 'Label ' + i,
          ProductDescription__c = 'Description ' + i,
          InStock__c = inStock
        )
      );
    }

    upsert products;
  }
}
