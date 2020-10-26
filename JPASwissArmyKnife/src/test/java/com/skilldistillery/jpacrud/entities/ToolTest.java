package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ToolTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("ToolPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	void test_tool_mapping() {
		Tool tool = em.find(Tool.class, 1);
		assertNotNull(tool);
		assertEquals(1, tool.getId());
		assertEquals("Dewalt", tool.getBrand());
		assertEquals("1/4 Impact Driver 20v XR", tool.getDescription());
		assertEquals("battery", tool.getPowerType());
		assertEquals(2014, tool.getYearBought());
		assertEquals("Morgan House", tool.getLocation());
		assertEquals("Worn", tool.getCondition());
		assertEquals(139.00, tool.getCost());
	}
	
}
