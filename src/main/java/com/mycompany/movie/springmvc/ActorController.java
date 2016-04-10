/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.movie.springmvc;

import domain.Actor;
import domain.Facade;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author cathlene
 */
@Controller
@RequestMapping(value="/actor")
public class ActorController {
    @Autowired
    private Facade facade;
      @RequestMapping(method=RequestMethod.GET)
    public ModelAndView getActors(){
    return new ModelAndView ("actors", "actors", facade.getActors());}
    
      @RequestMapping(value = "/new", method = RequestMethod.GET)
    public ModelAndView getNewForm(){
        return new ModelAndView ("actorForm", "actor", new Actor());
   }
    
      @RequestMapping(method = RequestMethod.POST)
    public String save( @Valid @ModelAttribute ("actor") Actor actor, BindingResult result){
        if(result.hasErrors()){
            return "actorForm";
        }
        facade.addActor(actor);
        return "redirect:/actor.htm";
    }
    
    @RequestMapping(value="/{id}", method=RequestMethod.GET)
    public ModelAndView getEditForm(@PathVariable long id){
     return new ModelAndView("actorEditForm", "actor",facade.getActor(id));
    }
    
      @RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
    public String deleteActor(@PathVariable long id){
        
        facade.deleteMoviesWithSpeceficActor(facade.getActor(id));
        facade.removeActor(id);
        return "redirect:/actor.htm";
    }
    
     @RequestMapping(value="/update", method=RequestMethod.POST)
    public String updateActor(@Valid @ModelAttribute("actor") Actor actor,BindingResult result){
         if(result.hasErrors()){
            return "actorEditForm";
        }
         
        facade.updateActor(actor);
        return "redirect:/actor.htm";
    }
    
       
      @RequestMapping(value="/movies/{id}", method=RequestMethod.GET)
    public ModelAndView  showMoviesForActor(@PathVariable long id){
        Actor actor= facade.getActor(id);
          
        facade.getMoviesWithSpecificActor(actor);
        return new ModelAndView("movies","movies", facade.getMoviesWithSpecificActor(actor));
    }
    
   /**  @RequestMapping(value="/addMovieToActor/{id}",method=RequestMethod.GET)
    public ModelAndView addMovieToActor(@PathVariable long id){
        ModelAndView modelAndView = new ModelAndView("addBookForm", "author", service.getAuthorById(id));
        modelAndView.addObject("books", service.getAllBookTitles());
        return modelAndView;
    }**/
}
