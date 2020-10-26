package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Tool;


public interface ToolDAO {
	Tool findToolById(int id);
	List<Tool> listAllTools();
	List<Tool> findToolByFields(String search);
	Tool createTool(Tool tool);
	Tool updateTool(int id, Tool tool);
	boolean deleteTool(int id);
	
}
