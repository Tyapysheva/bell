package com.example.bell.model;

import javax.persistence.*;

@Entity
@Table(name = "Document_type")
public class DocumentType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "code", nullable = false)
    private short code;

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    public Long getId() {
        return id;
    }

    public short getCode() {
        return code;
    }

    public void setCode(short code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
