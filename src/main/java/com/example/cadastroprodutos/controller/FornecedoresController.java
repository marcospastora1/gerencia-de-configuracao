/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.cadastroprodutos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.cadastroprodutos.model.Fornecedor;
import com.example.cadastroprodutos.repository.FornecedorRepository;

/**
 *
 * @author marco
 */
@Controller
public class FornecedoresController {
    @Autowired
    FornecedorRepository fornecedorRepository;

    // retorna uma página contendo os dados
    @GetMapping({ "/fornecedores" })
    public String listaFornecedores(Model model) {
        List<Fornecedor> fornecedores = fornecedorRepository.findAll();

        model.addAttribute("fornecedores", fornecedores);
        return "fornecedores";
    }

    // retorna a view para cadastro
    @GetMapping({ "/cadastroFornecedor" })
    public String cadastroFornecedor() {
        return "cadastroFornecedor";
    }

    // retorna a view para edicao
    @GetMapping({ "/edicaoFornecedor" })
    public String edicao(long idFornecedor, Model model) {
        Fornecedor fornecedor = fornecedorRepository.findById(idFornecedor).orElse(null);

        if (fornecedor != null) {
            model.addAttribute("fornecedor", fornecedor);
            return "edicaoFornecedor";
        } else {
            return "cadastroFornecedor";
        }

    }

    @GetMapping({ "/excluirFornecedor" })
    public String excluirFornecedor(Model model, long idFornecedor) {
        Fornecedor fornecedor = fornecedorRepository.findById(idFornecedor).orElse(null);
        if (fornecedor != null) {
            fornecedorRepository.delete(fornecedor);
        }
        return listaFornecedores(model);
    }

    @PostMapping({ "/cadastroFornecedor" })
    public String cadastrarFornecedor(Model model, Fornecedor fornecedor) {
        fornecedorRepository.save(fornecedor);
        return listaFornecedores(model);
    }

    @PostMapping({ "/edicaoFornecedor" })
    public String editarFornecedor(Model model, Long idFornecedor, Fornecedor fornecedor) {
        Fornecedor fornecedorUpdate = fornecedorRepository.findById(idFornecedor).get();

        fornecedorUpdate.setNome(fornecedor.getNome());
        fornecedorUpdate.setCnpj(fornecedor.getCnpj());

        fornecedorRepository.save(fornecedorUpdate);

        return listaFornecedores(model);
    }

}
