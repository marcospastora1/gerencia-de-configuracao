/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.cadastroprodutos.controller;

import com.example.cadastroprodutos.model.Usuario;
import com.example.cadastroprodutos.repository.UsuarioRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author marco
 */
@Controller
public class UsuarioController {

    @Autowired
    UsuarioRepository usuarioRepository;

    @GetMapping({"/usuarios"})
    public String lista(Model model) {
        List<Usuario> usuarios = usuarioRepository.findAll();

        model.addAttribute("usuarios", usuarios);
        return "usuarios";
    }

    @GetMapping({"/edicaoUsuario"})
    public String edicao(long idUsuario, Model model) {
        Usuario usuario = usuarioRepository.findById(idUsuario).orElse(null);

        if (usuario != null) {
            model.addAttribute("usuario", usuario);
            return "edicaoUsuario";
        } else {
            return "inscrever";
        }
    }

    @GetMapping({"/excluirUsuario"})
    public String excluirUsuario(Model model, long idUsuario) {
        Usuario usuario = usuarioRepository.findById(idUsuario).orElse(null);
        if (usuario != null) {
            usuarioRepository.delete(usuario);
        }
        return lista(model);
    }

    @PostMapping({"/cadastroUsuario"})
    public String cadastrarUsuario(Model model, Usuario usuario) {
        usuarioRepository.save(usuario);
        return lista(model);
    }

    @PostMapping({"/edicaoUsuario"})
    public String editarUsuario(Model model, Long idUsuario, Usuario usuario) {
        Usuario usuarioUpdate = usuarioRepository.findById(idUsuario).get();

        usuarioUpdate.setNome(usuario.getNome());
        usuarioUpdate.setSobrenome(usuario.getSobrenome());
        usuarioUpdate.setEmail(usuario.getEmail());
        usuarioUpdate.setSenha(usuario.getSenha());
        usuarioUpdate.setTelefone(usuario.getTelefone());
        usuarioUpdate.setNascimento(usuario.getNascimento());
        

        usuarioRepository.save(usuarioUpdate);

        return lista(model);
    }
}
