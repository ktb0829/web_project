package lib.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lib.command.CommandException;

public interface Command {
	  public String execute( HttpServletRequest request,HttpServletResponse response ) throws CommandException, lib.command.CommandException;
} 
 