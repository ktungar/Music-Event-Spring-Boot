package com.kunal.eventful.MusicEvent.service;

import java.util.List;

import com.kunal.eventful.MusicEvent.requestresponce.MusicEventRequestResponce;

public interface EventService {
	public List<MusicEventRequestResponce> getEvent();

}
