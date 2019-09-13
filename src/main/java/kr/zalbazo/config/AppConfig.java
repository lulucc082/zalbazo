package kr.zalbazo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import({DBConfig.class, MailConfig.class})
public class AppConfig {

}
