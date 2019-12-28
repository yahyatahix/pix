package ma.komoro.web.dto;

import ma.komoro.entities.Prof;
import org.hibernate.validator.constraints.Email;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ProfForm {
    @NotNull
    private String login;
    @NotNull
    private String firstName;
    @NotNull
    private String lastName;
    @NotNull
    @Email
    private String email;
    @NotNull
    @Size(min = 8,max = 32)
    private String password;

    public ProfForm() {
    }

    public Prof toProfModel(PasswordEncoder passwordEncoder){
        Prof prof = new Prof();
        prof.setEmail(email);
        prof.setFirstName(firstName);
        prof.setLogin(login);
        prof.setPassword(passwordEncoder.encode(password));
        prof.setLastName(lastName);
        return prof;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
