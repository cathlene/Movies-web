package MovieConverter;
import org.springframework.core.convert.converter.Converter;
import domain.Actor;
import domain.Facade;
import domain.Movie;
import org.springframework.beans.factory.annotation.Autowired;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author cathlene
 */
public class MovieConverter implements Converter<String,Movie>{

     @Autowired
    private Facade facade;
    
  
    @Override
    public Movie convert(String s) {
        if (s == null) {
        throw new IllegalArgumentException();
}   
        return facade.getMovie(s);
    }
    
    
}
