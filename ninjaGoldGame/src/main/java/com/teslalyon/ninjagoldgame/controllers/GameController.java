package com.teslalyon.ninjagoldgame.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class GameController {
	@RequestMapping("/")
	public String gameOptions(HttpSession session) {
		if (session.getAttribute("gold") == null) {
			session.setAttribute("gold", 0);
			return "main.jsp";
		}
		else if (session.getAttribute("gold") != null) {
			return "main.jsp";
		}
		return "main.jsp";
	}
	
	@RequestMapping("/submit")
	public String submitOption(@RequestParam("location") String location, HttpSession session) {
		
		int currentGold = (int) session.getAttribute("gold");
		int goldEarned = generateGold(location);
		currentGold += goldEarned;
		session.setAttribute("gold", currentGold);
		
		if (session.getAttribute("actions") == null) {
			session.setAttribute("actions", new ArrayList<String>());
			String newString = generateNote(location, goldEarned);
			ArrayList<String> currentActions = (ArrayList<String>) session.getAttribute("actions");
			currentActions.add(newString);
			session.setAttribute("actions", currentActions);
			return "redirect:/";
		}
		else {
		String newString = generateNote(location, goldEarned);
		ArrayList<String> currentActions = (ArrayList<String>) session.getAttribute("actions");
		currentActions.add(newString);
		session.setAttribute("actions", currentActions);
		return "redirect:/";
		}
	}
	
	@RequestMapping("/reset")
	public String resetGame(HttpSession session) {
		session.setAttribute("actions", null);
		session.setAttribute("gold", 0);
		return "redirect:/";
	}
	
	public String generateNote(String location, int goldEarned) {
		Date timeStamp = new Date();
		System.out.println(timeStamp);
		String newString;
		if (goldEarned < 0) {
			newString = "You lost " + goldEarned + " golden drachma." + timeStamp;
		}
		else {
			newString = "You entered " + location + " and earned " + goldEarned + " golden drachma." + timeStamp;
		}
		return newString;
	}
	
	public int generateGold(String location) {
		Random random = new Random();
		// switch statement to check location
		switch (location) {
		case "quest":
			return random.nextInt(101)-50;
		case "farm":
			return random.nextInt(11)+10;
		case "cave":
			return random.nextInt(6)+5;
		case "house":
			return random.nextInt(4)+2;
		default: return 0;
		}
	}
	
	/*@PostMapping("/submit")
	public String submitOption(@RequestParam(value="location"), HttpSession session, String location) {
		if (location = )
		return "redirect:/dashboard";*/
}