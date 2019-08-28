package com.kdp.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Type {
    private int typeId;
    private String typeName;

    public Type(int typeId) {
        this.typeId = typeId;
    }
}
