package me.lucasrodrigo.flutterestacionamento.api.service;

import lombok.RequiredArgsConstructor;
import me.lucasrodrigo.flutterestacionamento.api.repository.AccountRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class VacancieService {

    private final AccountRepository accountRepository;


}
