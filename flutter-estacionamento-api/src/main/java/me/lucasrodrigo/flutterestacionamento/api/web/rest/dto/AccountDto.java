package me.lucasrodrigo.flutterestacionamento.api.web.rest.dto;

import lombok.Data;
import me.lucasrodrigo.flutterestacionamento.api.domain.Account;

@Data
public class AccountDto {

    private Long id;
    private String name;
    private String phoneNumber;
    private String user;
    private String password;

    public Account toEntity() {
        Account account = new Account();
        account.setId(null);
        account.setName(getName());
        account.setPassword(getPassword());
        account.setPhoneNumber(getPhoneNumber());
        account.setUser(getUser());

        return account;
    }
}
