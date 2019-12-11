package me.lucasrodrigo.flutterestacionamento.api.web.rest;

import lombok.RequiredArgsConstructor;
import me.lucasrodrigo.flutterestacionamento.api.domain.Account;
import me.lucasrodrigo.flutterestacionamento.api.repository.AccountRepository;
import me.lucasrodrigo.flutterestacionamento.api.service.AccountService;
import me.lucasrodrigo.flutterestacionamento.api.web.rest.dto.AccountDto;
import me.lucasrodrigo.flutterestacionamento.api.web.rest.dto.LoginDto;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/accounts")
public class AccountResource {

    private final AccountRepository accountRepository;
    private final AccountService accountService;

    @PostMapping("/login")
    public ResponseEntity<Boolean> login(@RequestBody LoginDto loginDto) {
        return ResponseEntity.ok().body(accountRepository.existsAccountByUserContainingAndPasswordContaining(loginDto.getUsername(), loginDto.getPassword()));
    }

    @PostMapping
    public ResponseEntity<Account> save(@RequestBody AccountDto account) {
        return ResponseEntity.ok().body(accountService.insert(account));
    }

    @GetMapping
    public ResponseEntity<List<Account>> findAll() {
        return ResponseEntity.ok().body(accountRepository.findAll());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Account> findById(@PathVariable Long id) {
        return ResponseEntity.ok().body(accountService.findById(id));
    }

}
