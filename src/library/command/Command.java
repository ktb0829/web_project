package library.command;

import javax.servlet.http.HttpServletRequest;

import library.command.CommandException;

public interface Command {
	public String execute( HttpServletRequest request ) throws CommandException;
}