package converter;

import org.springframework.core.convert.converter.Converter;
import domain.Actor;
import domain.Facade;
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
public class ActorConverter implements Converter<String, Actor> {

    @Autowired
    private Facade facade;

    @Override
    public Actor convert(String s) {
        if (s == null) {
            throw new IllegalArgumentException();
        }
        Long id= Long.parseLong(s);
        return facade.getActor(id);

    }

}
