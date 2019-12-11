package me.lucasrodrigo.flutterestacionamento.api.service;

import lombok.RequiredArgsConstructor;
import me.lucasrodrigo.flutterestacionamento.api.domain.Account;
import me.lucasrodrigo.flutterestacionamento.api.domain.Reserve;
import me.lucasrodrigo.flutterestacionamento.api.repository.AccountRepository;
import me.lucasrodrigo.flutterestacionamento.api.repository.ReserveRepository;
import me.lucasrodrigo.flutterestacionamento.api.web.rest.dto.AccountDto;
import me.lucasrodrigo.flutterestacionamento.api.web.rest.dto.ReserveDto;
import org.hibernate.service.spi.ServiceException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReserveService {

    private final ReserveRepository reserveRepository;
    private final AccountRepository accountRepository;

    public Reserve insert(ReserveDto dto) {
        Reserve reserve = new Reserve();
        reserve.setId(null);

        Account account = accountRepository.findById(dto.getAccountId()).get();
        disactiveReserves(account.getId());

        reserve.setAccount(account);
        reserve.setActive(true);
        return reserveRepository.save(reserve);
    }

    public Reserve findById(Long id) throws ServiceException {
        return reserveRepository.findById(id).orElseThrow(() -> {
            throw new ServiceException("Registro não encontrado");
        });
    }

    private void disactiveReserves(Long accountId) {
        reserveRepository.disapproveAllReservesByAccountId(accountId);
    }

}
