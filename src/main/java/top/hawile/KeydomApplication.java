package top.hawile;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("top.hawile.mapper")
public class KeydomApplication {

    public static void main(String[] args) {
        SpringApplication.run(KeydomApplication.class, args);
    }

    /* @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(this.getClass());
    }*/
}
