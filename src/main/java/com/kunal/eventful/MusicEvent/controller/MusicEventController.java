package com.kunal.eventful.MusicEvent.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kunal.eventful.MusicEvent.requestresponce.MusicEventRequestResponce;
import com.kunal.eventful.MusicEvent.service.EventService;

@Controller
public class MusicEventController {

	@Autowired
	EventService eventService;

	@GetMapping("/")
	public String getEvent() {
		return "musicEvent";
	}
	

	@PostMapping(path = "/event")
	public ResponseEntity<List<MusicEventRequestResponce>> getEventData() {
		return new ResponseEntity<List<MusicEventRequestResponce>>(eventService.getEvent(), HttpStatus.OK);

	}
}
