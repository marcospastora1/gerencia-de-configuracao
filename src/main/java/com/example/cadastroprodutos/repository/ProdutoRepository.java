/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.cadastroprodutos.repository;

import com.example.cadastroprodutos.model.Produto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
/**
 *
 * @author lauropina
 */
@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long> {
    
}
