package com.khaibq.quanlysinhvien.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author KhaiBQ
 * @since 6/29/2023 - 12:24 AM
 */
@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MonHoc {
    @Id
    private String maMonHoc;
    private String tenMonHoc;
}
