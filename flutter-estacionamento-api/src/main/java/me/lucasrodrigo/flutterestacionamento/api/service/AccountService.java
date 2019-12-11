package me.lucasrodrigo.flutterestacionamento.api.service;

import lombok.RequiredArgsConstructor;
import me.lucasrodrigo.flutterestacionamento.api.domain.Account;
import me.lucasrodrigo.flutterestacionamento.api.repository.AccountRepository;
import me.lucasrodrigo.flutterestacionamento.api.web.rest.dto.AccountDto;
import org.hibernate.service.spi.ServiceException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AccountService {

    private final AccountRepository accountRepository;

    public Account insert(AccountDto dto) {
        Account account = dto.toEntity();
        account.setPassword(new BCryptPasswordEncoder().encode(dto.getPassword()));
        return accountRepository.save(account);
    }

    public Account findById(Long id) throws ServiceException {
        return accountRepository.findById(id).orElseThrow(() -> {
            throw new ServiceException("Registro não encontrado");
        });
    }

}
