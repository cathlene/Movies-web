/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.movie.springmvc;
import domain.Facade;
import domain.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
        return new ModelAndView ("movieForm", "movie", new Movie());
   }
    
   @RequestMapping(method = RequestMethod.POST)
    public String save(@ModelAttribute ("movie") Movie movie){
        facade.addMovie(movie);
        return "redirect:/movie.htm";
    }
}
