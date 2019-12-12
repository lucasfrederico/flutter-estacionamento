package me.lucasrodrigo.flutterestacionamento.api.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Vacancie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private boolean busy = true;

    @JsonIgnore
    @OneToOne
    @JoinColumn(name = "reserve_id")
    private Reserve reserve;
}
