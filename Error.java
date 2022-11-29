/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package grupo;

/**
 *
 * @author PC ARI 10
 */
public class Error extends Exception {

    /**
     * Creates a new instance of <code>Error</code> without detail message.
     */
    public Error() {
    }

    /**
     * Constructs an instance of <code>Error</code> with the specified detail
     * message.
     *
     * @param msg the detail message.
     */
    public Error(String msg) {
        super(msg);
    }
}
