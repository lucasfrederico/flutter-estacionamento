package me.lucasrodrigo.flutterestacionamento.api.repository;

import me.lucasrodrigo.flutterestacionamento.api.domain.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long> {

    boolean existsAccountByUserContainingAndPasswordContaining(String user, String password);

}
