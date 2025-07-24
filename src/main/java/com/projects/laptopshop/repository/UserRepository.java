package com.projects.laptopshop.repository;

import com.projects.laptopshop.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {

    User save(User user);

    List<User> findOneByEmail(String name);

}
