/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.cadastroprodutos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.cadastroprodutos.repository.ProdutoRepository;
import com.example.cadastroprodutos.model.Produto;

/**
 *
 * @author lauropina
 */
@Controller
public class ProdutoController {

    @Autowired
    ProdutoRepository produtoRepository;

      // retorna a view para cadastro
    @GetMapping({ "/", "/home", "/index" })
    public String home() {
        return "home";
    }  
    
    // retorna uma página contendo os dados
    @GetMapping({ "/produtos"})
    public String lista(Model model) {
        List<Produto> produtos = produtoRepository.findAll();

        model.addAttribute("produtos", produtos);
        return "produtos";
    }

    // retorna a view para cadastro
    @GetMapping({ "/cadastroProduto" })
    public String cadastro() {
        return "cadastroProduto";
    }

    // retorna a view para edicao
    @GetMapping({ "/edicaoProduto" })
    public String edicao(long idProduto, Model model) {
        Produto produto = produtoRepository.findById(idProduto).orElse(null);

        if (produto != null) {
            model.addAttribute("produto", produto);
            return "edicaoProduto";
        } else {
            return "cadastroProduto";
        }

    }

    @GetMapping({ "/excluirProduto" })
    public String excluirProduto(Model model, long idProduto) {
        Produto produto = produtoRepository.findById(idProduto).orElse(null);
        if (produto != null) {
            produtoRepository.delete(produto);
        }
        return lista(model);
    }

    // retorna a view para contato
    @GetMapping({ "/faleConosco" })
    public String faleConosco() {
        return "faleConosco";
    }

    // retorna a view para inscrever
    @GetMapping({ "/inscrever" })
    public String inscrever() {
        return "inscrever";
    }

    // retorna a view para entrar
    @GetMapping({ "/entrar" })
    public String entrar() {
        return "entrar";
    }

<<<<<<< HEAD
    @GetMapping({ "/cadusuario"})
    public String cadusuario(Model model) {
        return "cadusuario";    
    }
    
    
    
=======
    @GetMapping({ "/sobre" })
    public String sobre() {
        return "sobre";
    }

>>>>>>> 08579784e8eac5152616056d712c5e36be9535ce

    @PostMapping({ "/cadastroProduto" })
    public String cadastrarProduto(Model model, Produto produto) {
        produtoRepository.save(produto);
        return lista(model);
    }

    @PostMapping({ "/edicaoProduto" })
    public String editarProduto(Model model, Long idProduto, Produto produto) {
        Produto produtoUpdate = produtoRepository.findById(idProduto).get();

        produtoUpdate.setCodigo(produto.getCodigo());
        produtoUpdate.setDescricao(produto.getDescricao());
        produtoUpdate.setPreco(produto.getPreco());
        produtoUpdate.setQuantidade(produto.getQuantidade());
        produtoUpdate.setUnidadeVenda(produto.getUnidadeVenda());

        produtoRepository.save(produtoUpdate);

        return lista(model);
    }
}