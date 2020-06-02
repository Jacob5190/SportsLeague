package beans;

import java.util.Date;

public class calendarEvent {
	private Date date;
	private String event;

	public Date getDate () {
		return date;
	}

	public void setDate (Date date) {
		this.date = date;
	}

	public String getEvent () {
		return event;
	}

	public void setEvent (String event) {
		this.event = event;
	}
}
