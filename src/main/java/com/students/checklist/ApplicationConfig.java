package com.students.checklist;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.XmlViewResolver;


@Configuration
@ComponentScan(basePackages = "com.students.checklist")
public class ApplicationConfig extends WebMvcConfigurationSupport{
	
	@Value("${upload.path}")
	private String Upload;
	
	@Override
	protected void addResourceHandlers(ResourceHandlerRegistry registry) {
		System.out.println(Upload);
		registry.addResourceHandler("css/**","images/**","js/**","fonts/**","img/**","jquery/**","/fonts","app/checklist/adminuser/img/**",
				"images/**","result/images/**","uploadImg/images/**","staffhome/images/**")
		.addResourceLocations("classpath:/static/css/","classpath:/static/images/","classpath:/static/js/",
				"classpath:/static/fonts/","classpath:/static/img/"
				,"classpath:/static/jquery/"
				,"classpath:/static/fonts/"
				,"classpath:/static/img/"
				,"file:"+Upload+"/"
				,"file:"+Upload+"/"
				,"file:"+Upload+"/"
				,"file:"+Upload+"/"
				);
	}
	
	@Bean
	public InternalResourceViewResolver jspViewResolver() {
		InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/jsp/");
		viewResolver.setSuffix(".jsp");
		viewResolver.setOrder(2);
		viewResolver.setViewClass(JstlView.class);
		return viewResolver;
		
	}
	
	
	
	@Bean
	public XmlViewResolver viewResolver() {
		XmlViewResolver viewResolver=new XmlViewResolver();
		viewResolver.setLocation(new ClassPathResource("views.xml"));
		viewResolver.setOrder(1);
		return viewResolver;
	}
	
	
}