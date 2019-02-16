<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"
	crossorigin="anonymous"></script>
<title>EnentFul</title>
</head>
<body>
	<div>
		<h4 style="font-family: sans-serif; text-align: center;">Music
			Event</h4>
	</div>
	<div style="text-align: center;" class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>Event Title</th>
					<th>Event URL</th>
					<th>Venue Name</th>
					<th>Start Time</th>
					<th>Venue Address</th>
					<th>Venue Url</th>
					<th>City</th>
					<th>Country</th>
					<th>Postal Code</th>
				</tr>

			</thead>
			<tbody id="music_event_tbody">

			</tbody>
		</table>

	</div>

	<script type="text/javascript">
		$.ajax({
			type : 'POST',
			cache : false,
			url : 'event',
			success : function(response) {
				processMusicEvent(response);
			}
		});

		function processMusicEvent(response) {
			if (response != null && response.length > 0) {
				var allMusicEvent = "";
				for (var i = 0; i < response.length; i++) {

					var eachMusicEvent = response[i];
					
					allMusicEvent += "<tr><td><label>"
							+ eachMusicEvent["eventTitle"]
							+ "</label></td><td><a href='"+eachMusicEvent["eventUrl"]+"' target='_blank'>Click Here</a></td><td><label>"
							+ eachMusicEvent["eventVenueName"]
							+ "</lable></td><td><label>"
							+ eachMusicEvent["eventStartTime"]
							+ "</label></td><td><label>"
							+ eachMusicEvent["eventVenueAddress"]
							+ "</label></tb><td><a href='"+eachMusicEvent["eventVenueUrl"]+"'>Click Here</a></tb><td><label>"
							+ eachMusicEvent["eventCity"]
							+ "</label></tb><td><label>"
							+ eachMusicEvent["eventCountry"]
							+ "</label></tb><td><label>"
							+ eachMusicEvent["eventPostalCode"]
							+ "</label></tb></tr>";

				}
				$("#music_event_tbody").html(allMusicEvent);
			}
		}
	</script>
</body>
</html>
