package com.khaibq.quanlysinhvien.service.impl;

import com.khaibq.quanlysinhvien.dto.response.SinhVienDTO;
import com.khaibq.quanlysinhvien.repository.SinhVienRepository;
import com.khaibq.quanlysinhvien.service.SinhVienService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author KhaiBQ
 * @since 6/29/2023 - 12:50 AM
 */
@Service
@AllArgsConstructor
public class SinhVienServiceImpl implements SinhVienService {
    private final SinhVienRepository sinhVienRepository;

    @Override
    public List<SinhVienDTO> getAllSinhVien() {
        return sinhVienRepository.findAll()
                .stream()
                .map(sinhVien -> SinhVienDTO.builder()
                        .maSv(sinhVien.getMaSv())
                        .tenSv(sinhVien.getTenSv())
                        .gioiTinh(getGioiTinh(sinhVien.getGioiTinh()))
                        .queQuan(sinhVien.getQueQuan())
                        .ngaySinh(sinhVien.getNgaySinh())
                        .tenLop(sinhVien.getLop().getTenLop())
                        .build()).collect(Collectors.toList());
    }

    private String getGioiTinh(Integer value) {
        if (value == 0) return "Nam";
        if (value == 1) return "Nữ";
        return "N/A";
    }
}
