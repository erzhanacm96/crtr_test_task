package kz.almasov.crtr_test_task.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    @NotBlank(message = "user.first.name.empty.error")
    private String firstName;

    @NotBlank(message = "user.second.name.empty.error")
    private String secondName;

    @NotBlank(message = "user.patronymic.empty.error")
    private String patronymic;

    @Basic
    @Temporal(TemporalType.DATE)
    @Past(message = "user.birthday.time.error")
    @NotNull(message = "user.birthday.empty.error")
    private Date birthday;
}
