package me.lucasrodrigo.flutterestacionamento.api.web.rest.dto;

import lombok.Data;
import me.lucasrodrigo.flutterestacionamento.api.domain.Account;

@Data
public class ReserveDto {

    private Long id;
    private boolean active;
    private Long accountId;

}
