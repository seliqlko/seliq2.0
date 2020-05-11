package mpackage;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rishabh
 */
public interface ModelInterface {

	public void requestProcessor(HttpServletRequest request, HttpServletResponse response,
			ServletContext servletContext);

}
