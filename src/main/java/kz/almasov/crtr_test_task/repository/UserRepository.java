package kz.almasov.crtr_test_task.repository;

import kz.almasov.crtr_test_task.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface UserRepository extends PagingAndSortingRepository<User, Long> {

    Page<User> findAll(Pageable page);

}
