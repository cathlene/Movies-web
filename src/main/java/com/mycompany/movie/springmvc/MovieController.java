/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.movie.springmvc;
import domain.*;
import javax.swing.JOptionPane;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
    public ModelAndView getMovieWithDurationLessOrEqual(@RequestParam ("Duur") Integer duur){
        return new ModelAndView("movies","movies", facade.getMoviesWithSpecificDuration(duur));
    }
    
    @RequestMapping(value="/{id}/{firstname}/{name}", method=RequestMethod.GET)
    public ModelAndView getEditForm(@PathVariable ("id")long id, @PathVariable ("firstname")String firstname,@PathVariable ("name")String name){
        Movie movie= facade.getMovie(id);
     return new ModelAndView("movieEditForm", "movieBuilder",new MovieBuilder(movie.getTitle(),movie.getDuur(),firstname,name,id));
    }
    
    @RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
    public String deleteMovie(@PathVariable long id){
        facade.removeMovie(facade.getMovie(id));
        return "redirect:/movie.htm";
    }
    
    
     @RequestMapping(value="/update", method=RequestMethod.POST)
    public String updateMovie(@Valid @ModelAttribute("movieBuilder") MovieBuilder movieBuilder,BindingResult result){
         if(result.hasErrors()){
            return "movieEditForm";
        }
        Movie movie=movieBuilder.build(facade);
        facade.updateMovie(movie);
        return "redirect:/movie.htm";
    }
    
     @RequestMapping(value="/ChooseActor/{id}", method=RequestMethod.GET)
    public String ChooseActor(@PathVariable long id){
        facade.removeMovie(facade.getMovie(id));
        return "redirect:/movie.htm";
    }
}
