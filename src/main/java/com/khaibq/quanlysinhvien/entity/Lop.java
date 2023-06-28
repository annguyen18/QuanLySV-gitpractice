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

/**
 * @author KhaiBQ
 * @since 6/29/2023 - 12:24 AM
 */@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Lop {
     @Id
     private String maLop;
     private String tenLop;

     @ManyToOne
     @JoinColumn(name = "maKhoaHoc")
     private KhoaHoc khoaHoc;

     @ManyToOne
     @JoinColumn(name = "maHeDt")
     private HeDaoTao heDaoTao;

     @ManyToOne
     @JoinColumn(name = "maKhoa")
     private Khoa khoa;
}
