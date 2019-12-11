package me.lucasrodrigo.flutterestacionamento.api.web.rest;

import lombok.RequiredArgsConstructor;
import me.lucasrodrigo.flutterestacionamento.api.domain.Reserve;
import me.lucasrodrigo.flutterestacionamento.api.repository.ReserveRepository;
import me.lucasrodrigo.flutterestacionamento.api.service.ReserveService;
import me.lucasrodrigo.flutterestacionamento.api.web.rest.dto.ReserveDto;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/reserves")
public class ReserveResource {

    private final ReserveRepository reserveRepository;
    private final ReserveService reserveService;

    @PostMapping
    public ResponseEntity<Reserve> save(@RequestBody ReserveDto reserveDto) {
        return ResponseEntity.ok().body(reserveService.insert(reserveDto));
    }

    @GetMapping
    public ResponseEntity<List<Reserve>> findAll() {
        return ResponseEntity.ok().body(reserveRepository.findAll());
    }

    @GetMapping("/account-id/{accountId}")
    public ResponseEntity<List<Reserve>> findAllByAccount(@PathVariable Long accountId) {
        return ResponseEntity.ok().body(reserveRepository.findAllByAccount_Id(accountId));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Reserve> findById(@PathVariable Long id) {
        return ResponseEntity.ok().body(reserveService.findById(id));
    }

}
