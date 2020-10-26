package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Tool;

@Transactional
@Service
public class ToolDaoImpl implements ToolDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Tool findToolById(int id) {
		return em.find(Tool.class, id);
	}

	@Override
	public List<Tool> listAllTools() {
		String jpql = "SELECT tool from Tool tool";
		return em.createQuery(jpql).getResultList();
	}

	@Override
	public List<Tool> findToolByFields(String search) {
		String jpql = "SELECT tool from Tool tool where tool.description like :search";
		return em.createQuery(jpql).setParameter(1, search).getResultList();
	}
	@Transactional
	@Override
	public Tool createTool(Tool tool) {
		em.persist(tool);
		em.flush();
		em.close();
		return tool;
	}
	@Transactional
	@Override
	public Tool updateTool(int id, Tool tool) {
		Tool dbTool = em.find(Tool.class, id);
		dbTool.setBrand(tool.getBrand());
		dbTool.setCondition(tool.getCondition());
		dbTool.setCost(tool.getCost());
		dbTool.setDescription(tool.getDescription());
		dbTool.setLocation(tool.getLocation());
		dbTool.setPowerType(tool.getPowerType());
		dbTool.setYearBought(tool.getYearBought());
		em.flush();
		em.close();
		return dbTool;
	}

	@Override
	public boolean deleteTool(int id) {
		Tool toolToDelete = em.find(Tool.class, id);
		em.remove(toolToDelete);
		em.flush();
		boolean deleted = !em.contains(toolToDelete);
		em.close();
		return deleted;
	}

}
