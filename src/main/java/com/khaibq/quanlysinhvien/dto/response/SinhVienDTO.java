package com.khaibq.quanlysinhvien.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

/**
 * @author KhaiBQ
 * @since 6/29/2023 - 12:48 AM
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SinhVienDTO {
    private String maSv;
    private String tenSv;
    private String gioiTinh;
    private Date ngaySinh;
    private String queQuan;
    private String tenLop;
}
