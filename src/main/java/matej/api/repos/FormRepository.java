package matej.api.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import matej.models.Form;

public interface FormRepository extends JpaRepository<Form, Integer> {
	
}
