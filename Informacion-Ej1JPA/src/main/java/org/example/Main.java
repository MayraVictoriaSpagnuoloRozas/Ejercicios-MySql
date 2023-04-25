package org.example;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Main {
    public static void main(String[] args) {
        EntityManagerFactory em = Persistence.createEntityManagerFactory("UnidadDePersistencia");
        EntityManager entityManager = em.createEntityManager();

        entityManager.getTransaction().begin();

        Entidad entidad= new Entidad();

        entidad.setNombre("Ana");
        entidad.setApellido("Tilloux");
        entidad.setMail("ana.tijoux@gmail.com");

        entityManager.persist(entidad);

        entityManager.getTransaction().commit();

        entityManager.close();


    }
}