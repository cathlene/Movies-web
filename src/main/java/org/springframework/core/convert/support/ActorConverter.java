package org.springframework.core.convert.support;
import org.springframework.core.convert.converter.Converter;
import domain.Actor;
import domain.Facade;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author cathlene
 */
public class ActorConverter implements Converter<String,Actor>{

    private Facade facade;
    public ActorConverter(Facade facade){
    this.facade=facade;
    }
    @Override
    public Actor convert(String s) {
        if (s == null) {
        throw new IllegalArgumentException();
}   
        String res[]= s.split("\\s");
        Actor actor=facade.getActor(res[1], res[0]); 
        return actor;
    }
    
    
}
