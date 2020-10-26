package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpacrud.data.ToolDAO;
import com.skilldistillery.jpacrud.entities.Tool;

@Controller
public class ToolController {
	@Autowired
	private ToolDAO dao;
	
	@RequestMapping
	public String index(Model model) {
		List<Tool> tools = dao.listAllTools();
		model.addAttribute("tools", tools);
		return "index";
	}
	
	@RequestMapping (path="getTools.do")
	public String listAll(Model model) {
		List<Tool> tools = dao.listAllTools();
		model.addAttribute("tools", tools);
		return "results";
	}
	
	@RequestMapping (path="createToolForm.do")
	public String addTool() {
		return "create";
	}
	
	@RequestMapping (path="updateToolForm.do")
	public String updateTool(Model model, int id) {
		Tool tool = dao.findToolById(id);
		model.addAttribute("tool", tool);
		return "update";
	}
	
	@RequestMapping (path="updateToolBrand.do", method=RequestMethod.GET)
	public String updateToolBrand(Model model, int id, String brand) {
		Tool updateTool = dao.findToolById(id);
		updateTool.setBrand(brand);
		dao.updateTool(id, updateTool);
		model.addAttribute("tool", updateTool);
		return "update";
	}
	@RequestMapping (path="updateToolDescription.do", method=RequestMethod.GET)
	public String updateToolDescription(Model model, int id, String description) {
		Tool updateTool = dao.findToolById(id);
		updateTool.setDescription(description);
		dao.updateTool(id, updateTool);
		model.addAttribute("tool", updateTool);
		return "update";
	}
	@RequestMapping (path="updateToolCondition.do", method=RequestMethod.GET)
	public String updateToolCondition(Model model, int id, String condition) {
		Tool updateTool = dao.findToolById(id);
		updateTool.setCondition(condition);
		dao.updateTool(id, updateTool);
		model.addAttribute("tool", updateTool);
		return "update";
	}
	@RequestMapping (path="updateToolCost.do", method=RequestMethod.GET)
	public String updateToolCost(Model model, int id, Double cost) {
		Tool updateTool = dao.findToolById(id);
		updateTool.setCost(cost);
		dao.updateTool(id, updateTool);
		model.addAttribute("tool", updateTool);
		return "update";
	}
	@RequestMapping (path="updateToolLocation.do", method=RequestMethod.GET)
	public String updateToolLocation(Model model, int id, String location) {
		Tool updateTool = dao.findToolById(id);
		updateTool.setLocation(location);
		dao.updateTool(id, updateTool);
		model.addAttribute("tool", updateTool);
		return "update";
	}
	@RequestMapping (path="updateToolPower.do", method=RequestMethod.GET)
	public String updateToolPowerType(Model model, int id, String powerType) {
		Tool updateTool = dao.findToolById(id);
		updateTool.setPowerType(powerType);
		dao.updateTool(id, updateTool);
		model.addAttribute("tool", updateTool);
		return "update";
	}
	@RequestMapping (path="updateToolYear.do", method=RequestMethod.GET)
	public String updateToolYear(Model model, int id, Integer yearBought) {
		Tool updateTool = dao.findToolById(id);
		updateTool.setYearBought(yearBought);
		dao.updateTool(id, updateTool);
		model.addAttribute("tool", updateTool);
		return "update";
	}
	
	@RequestMapping (path="addTool.do", method=RequestMethod.GET)
	public String addTool(Model model, String brand, String description, 
			String condition, Double cost, Integer yearBought,
			String location, String powerType ) {
		Tool addTool = new Tool();
		addTool.setBrand(brand);
		addTool.setDescription(description);
		addTool.setCondition(condition);
		addTool.setCost(cost);
		addTool.setLocation(location);
		addTool.setPowerType(powerType);
		addTool.setYearBought(yearBought);
		dao.createTool(addTool);
		model.addAttribute("tool", addTool);
		return "singleResult";
	}
	
	@RequestMapping (path="deleteTool.do", method=RequestMethod.GET)
	public String deleteTool(Model model, int id) {
		Tool tool = dao.findToolById(id);
		boolean deleted = dao.deleteTool(id);
		model.addAttribute("deleted", deleted);
		model.addAttribute("tool", tool);
		return "deleted";
	}

}
