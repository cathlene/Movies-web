/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.movie.springmvc;
import domain.*;
import javax.swing.JOptionPane;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author cathlene
 */
@Controller
@RequestMapping(value="/movie")
public class MovieController {
     @Autowired
    private Facade facade;
     
   
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView getMovies(){
    return new ModelAndView ("movies", "movies", facade.getMovies());}
    
    
    @RequestMapping(value = "/new", method = RequestMethod.GET) 
    public ModelAndView getNewForm(){
        return new ModelAndView ("movieForm", "movieBuilder", new MovieBuilder()); 
   }
    
    
    @RequestMapping(method = RequestMethod.POST) 
    public String save( @ModelAttribute ("movieBuilder") MovieBuilder movieBuilder, BindingResult result){
        if(result.hasErrors()){
            return "movieForm";
        }
        try{
        Actor actor= movieBuilder.build(facade).getHoofdrolSpeler();
        Movie movie=movieBuilder.build(facade);
        facade.addMovie(movie);
        actor.addMovie(movie);
        }catch(DomainException e){
         return "movieForm";
        }
        return "redirect:/movie.htm";
    }
    
    @RequestMapping(value = "/duration",method = RequestMethod.GET)
    public ModelAndView getMovieWithDurationLessOrEqual(@ModelAttribute ("duur") Integer duur){
        return new ModelAndView("movies","movies", facade.getMoviesWithSpecificDuration(duur));
    }
}
