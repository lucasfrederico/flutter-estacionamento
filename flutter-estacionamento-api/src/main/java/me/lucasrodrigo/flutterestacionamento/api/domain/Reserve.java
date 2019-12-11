package me.lucasrodrigo.flutterestacionamento.api.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@Entity
public class Reserve {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private boolean active = false;

    @CreatedDate
    private LocalDateTime createdDate;

    @JsonIgnore
    @ManyToOne
    private Account account;
}
