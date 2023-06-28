package com.khaibq.quanlysinhvien.controller;

import com.khaibq.quanlysinhvien.dto.response.SinhVienDTO;
import com.khaibq.quanlysinhvien.entity.SinhVien;
import com.khaibq.quanlysinhvien.repository.SinhVienRepository;
import com.khaibq.quanlysinhvien.service.SinhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author KhaiBQ
 * @since 6/29/2023 - 12:40 AM
 */
@RestController
@RequestMapping("/api/v1/sinhvien")
public class SinhVienController {
    @Autowired
    private SinhVienService sinhVienService;

    @GetMapping
    public ResponseEntity<List<SinhVienDTO>> getAllSinhVien(){
        return ResponseEntity.ok(sinhVienService.getAllSinhVien());
    }

}
