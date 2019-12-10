package me.lucasrodrigo.flutterestacionamento.api.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class Account {

    @Id
    private Long id;

    private String name;

    private String phoneNumber;

    private String user;

    private String password;

}
