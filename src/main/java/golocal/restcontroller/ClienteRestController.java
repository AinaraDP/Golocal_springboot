package golocal.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.entity.Cliente;
import golocal.service.ClienteService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/clientes")
public class ClienteRestController {

	@Autowired
    private ClienteService clienteService;

	@GetMapping("/{idUsuario}")
    public ResponseEntity<Cliente> getClienteByUserId(@PathVariable("idUsuario") int idUsuario) {
        Cliente cliente = clienteService.findByIdUsuario(idUsuario);
        if (cliente != null) {
            return ResponseEntity.ok(cliente);
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
