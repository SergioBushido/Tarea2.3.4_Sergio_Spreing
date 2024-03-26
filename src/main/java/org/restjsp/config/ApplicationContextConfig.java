package org.restjsp.config;


import org.apache.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * ApplicationContextConfig class used to configure Spring MVC Context,
 * including:
 * <ul>
 * <li>View Resolver</li>
 * <li>Bean</li>
 * </ul>
 * 
 */
@Configuration
@ComponentScan("org.restjsp")

public class ApplicationContextConfig {

	private static final Logger LOGEVENT = Logger.getLogger(ApplicationContextConfig.class);

	@Bean
	public ResourceBundleMessageSource getMessageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();

		// Load property in message/validator.properties
		messageSource.setBasenames(new String[] { "messages/validator" });
		LOGEVENT.info("ApplicationContextConfig -> getMessageSource -> " + messageSource);
		return messageSource;
	}

	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/pages/");
		viewResolver.setSuffix(".jsp");
		LOGEVENT.info("ApplicationContextConfig -> getViewResolver -> " + viewResolver);
		return viewResolver;
	}

}