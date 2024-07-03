package Interfaces;

import model.TblUsuariocl3;

public interface IUsuario {
	TblUsuariocl3 validarUsuario(String usuario, String password);
}
