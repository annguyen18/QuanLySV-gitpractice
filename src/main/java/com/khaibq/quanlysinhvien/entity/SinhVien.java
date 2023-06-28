package com.khaibq.quanlysinhvien.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

/**
 * @author KhaiBQ
 * @since 6/29/2023 - 12:23 AM
 */
@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SinhVien {
    @Id
    private String maSv;
    private String tenSv;
    private Integer gioiTinh;
    private Date ngaySinh;
    private String queQuan;

    @ManyToOne
    @JoinColumn(name = "maLop")
    private Lop lop;
}
