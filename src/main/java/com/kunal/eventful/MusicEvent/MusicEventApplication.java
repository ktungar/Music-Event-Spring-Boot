package com.kunal.eventful.MusicEvent;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication

public class MusicEventApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(MusicEventApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MusicEventApplication.class);
	}

	private static SpringApplicationBuilder configureApplication(SpringApplicationBuilder builder) {
		return builder.sources(MusicEventApplication.class).bannerMode(Banner.Mode.OFF);
	}

}
