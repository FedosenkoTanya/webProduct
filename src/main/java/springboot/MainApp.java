package springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.convert.converter.Converter;

@SpringBootApplication
public class MainApp {

    @Bean
    public MessageRepository messageRepository() {
        return new InMemoryMessageRepository();
    }

    @Bean
    public Converter<String, Product> messageConverter() {
        return new Converter<String, Product>() {
            @Override
            public Product convert(String id) {
                return messageRepository().findMessage(Long.valueOf(id));
            }
        };
    }


    public static void main(String[] args) {
        SpringApplication.run(MainApp.class, args);
    }

}
