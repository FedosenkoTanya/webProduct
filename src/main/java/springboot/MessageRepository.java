package springboot;


interface MessageRepository {

    Iterable<Product> findAll();

    Product save(Product product);

    Product findMessage(Long id);

}

