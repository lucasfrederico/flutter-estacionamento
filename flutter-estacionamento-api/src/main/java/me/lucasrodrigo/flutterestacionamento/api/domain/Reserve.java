package me.lucasrodrigo.flutterestacionamento.api.domain;

import lombok.Data;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.time.LocalDateTime;

@Data
@Entity
public class Reserve {

    @Id
    private Long id;

    @CreatedDate
    private LocalDateTime createdDate;

    @OneToMany()
    private Account account;
}
