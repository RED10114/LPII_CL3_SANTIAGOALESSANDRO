package Controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ClassProductoImp;
import model.TblProductocl3;

/**
 * Servlet implementation class ControladorProducto
 */
public class ControladorProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TblProductocl3 producto=new TblProductocl3();
        ClassProductoImp crud=new ClassProductoImp();

        String accion=request.getParameter("accion");
        if(accion!=null){
            switch(accion){
            case "Modificar":
                int codigo=Integer.parseInt(request.getParameter("cod"));
                producto.setIdproductoscl3(codigo);
                TblProductocl3 buscarcod=crud.BuscarProducto(producto);
                request.setAttribute("codigo",buscarcod.getIdproductoscl3());
                request.setAttribute("nombre",buscarcod.getNombrecl3());
                request.setAttribute("precio venta",buscarcod.getPrecioventacl3());
                request.setAttribute("precio compra",buscarcod.getPreciocompcl3());
                request.setAttribute("estado",buscarcod.getEstadocl3());
                request.setAttribute("descripcion",buscarcod.getDescripcl3());
                request.getRequestDispatcher("/FormActualizarProducto.jsp").forward(request, response);
                break;
            case "Eliminar":
                int codeliminar=Integer.parseInt(request.getParameter("cod"));
                producto.setIdproductoscl3(codeliminar);
                crud.EliminarProducto(producto);
                List<TblProductocl3> listado=crud.ListarProducto();
                request.setAttribute("listadoproductos",listado);
                request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
                break;

            case "Listar":
                List<TblProductocl3> listadoproducto=crud.ListarProducto();
                request.setAttribute("listadoproductos",listadoproducto);
                request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
                break;

             }  


        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String codigo=request.getParameter("codigo");
        String nombre = request.getParameter("nombre");
        Double precioventa = Double.parseDouble(request.getParameter("precioventa"));
        Double preciocompra = Double.parseDouble(request.getParameter("preciocompra"));
        String estado = request.getParameter("estado");
        String descripcion = request.getParameter("descripcion");

        List<TblProductocl3> listadoproducto=null;

        TblProductocl3 producto=new TblProductocl3();
        ClassProductoImp crud=new ClassProductoImp();

        producto.setNombrecl3(nombre);
        producto.setPrecioventacl3(precioventa);
        producto.setPreciocompcl3(preciocompra);
        producto.setEstadocl3(estado);
        producto.setDescripcl3(descripcion);
        if(codigo!=null){
            int cod=Integer.parseInt(codigo);
            producto.setIdproductoscl3(cod);
            crud.ActualizarProducto(producto);
            listadoproducto=crud.ListarProducto();

        }else{
        crud.RegistrarProducto(producto);
        listadoproducto=crud.ListarProducto();

        } 
        request.setAttribute("listadoproductos",listadoproducto);
        request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
	}

}
