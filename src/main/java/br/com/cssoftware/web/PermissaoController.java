package br.com.cssoftware.web;

import br.com.cssoftware.seguranca.model.Permissao;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/permissaos")
@Controller
@RooWebScaffold(path = "permissaos", formBackingObject = Permissao.class)
public class PermissaoController {
}
