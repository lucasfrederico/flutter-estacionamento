package me.lucasrodrigo.flutterestacionamento.api.domain;

import com.sun.istack.NotNull;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String name;

    @NotNull
    private String phoneNumber;

    @NotNull
    private String user;

    @NotNull
    private String password;

    @OneToMany(mappedBy = "account")
    private List<Reserve> reserves;

}
