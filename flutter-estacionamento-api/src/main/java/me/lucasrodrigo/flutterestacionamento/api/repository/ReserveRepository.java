package me.lucasrodrigo.flutterestacionamento.api.repository;

import me.lucasrodrigo.flutterestacionamento.api.domain.Reserve;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReserveRepository extends JpaRepository<Reserve, Long> {

    @Query(value = "UPDATE reserve SET active = 0 WHERE account_id = :accountId", nativeQuery = true)
    void disapproveAllReservesByAccountId(@Param("accountId") Long accountId);

    List<Reserve> findAllByAccount_Id(Long accountId);

}
