package com.stackroute.keepnote.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

/*
 * The class "Note" will be acting as the data model for the Note data in the ArrayList.
 */
public class Note {

	/*
	 * This class should have five fields (noteId, noteTitle, noteContent,
	 * noteStatus and createdAt). This class should also contain the getters and
	 * setters for the fields. The value of createdAt should not be accepted from
	 * the user but should be always initialized with the system date
	 */
	int NoteId;
	String NoteTitle;
	String NoteContent;
	String NoteStatus;
	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	LocalDateTime CreatedAt = LocalDateTime.now();

	public Note() {
	}

	/* All the getters/setters definition should be implemented here */

	public int getNoteId() {
		return NoteId;
	}

	public void setNoteId(int noteId) {
		NoteId = noteId;
	}

	public String getNoteTitle() {
		return NoteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		NoteTitle = noteTitle;
	}

	public String getNoteContent() {
		return NoteContent;
	}

	public void setNoteContent(String noteContent) {
		NoteContent = noteContent;
	}

	public String getNoteStatus() {
		return NoteStatus;
	}

	public void setNoteStatus(String noteStatus) {
		NoteStatus = noteStatus;
	}

	public DateFormat getDateFormat() {
		return dateFormat;
	}

	public void setDateFormat(DateFormat dateFormat) {
		this.dateFormat = dateFormat;
	}

	public LocalDateTime getCreatedAt() {
		return CreatedAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		CreatedAt = createdAt;
	}

	/* Override the toString() method */

	@Override
	public String toString() {
		return null;
	}
}