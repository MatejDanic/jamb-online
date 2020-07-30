package matej.components;

import java.util.Arrays;

import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import matej.api.repos.RoleRepository;
import matej.models.Role;

@Component
public class AppStartupComponent {    
    @Bean
    public ApplicationRunner initializer(RoleRepository roleRepo) {
        return args -> roleRepo.saveAll(Arrays.asList(
            new Role("SITE_USER"),
            new Role("ADMIN_USER"),
            new Role("SUPER_USER")
        ));
    }
}