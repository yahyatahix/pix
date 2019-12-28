package ma.komoro.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import ma.komoro.dao.ProfRepository;
import ma.komoro.entities.Prof;
import ma.komoro.services.Initializer;

@Component
public class ProfInitializer implements Initializer {
    @Autowired
    private ProfRepository customerRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void init() {
        Prof prof = new Prof();
        prof.setEmail("john@gmail.com");
        prof.setFirstName("John");
        prof.setLastName("Doe");
        prof.setLogin("jdoe");
        prof.setPassword(passwordEncoder.encode("pass"));
        customerRepository.save(prof);
    }
}