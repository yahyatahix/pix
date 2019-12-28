package ma.komoro.dao;

import ma.komoro.entities.Prof;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProfRepository extends JpaRepository<Prof, Integer> {

    Prof findByLogin(String login);
}
