package springboot;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;

public class InMemoryMessageRepository implements MessageRepository {

    private static AtomicLong counter = new AtomicLong();

    private final ConcurrentMap<Long, Product> products = new ConcurrentHashMap<Long, Product>();

    @Override
    public Iterable<Product> findAll() {
        return this.products.values();
    }

    @Override
    public Product save(Product product) {
        Long id = product.getId();
        if (id == null) {
            id = counter.incrementAndGet();
           product.setId(id);
        }
        this.products.put(id, product);
        return product;
    }

    @Override
    public Product findMessage(Long id) {
        return this.products.get(id);
    }

}

