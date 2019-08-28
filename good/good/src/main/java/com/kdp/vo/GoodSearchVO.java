package com.kdp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GoodSearchVO {
    //搜索的字段
    private String searchName;
    private String searchType;
}
