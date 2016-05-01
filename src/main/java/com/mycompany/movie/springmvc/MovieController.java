/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.movie.springmvc;

import domain.*;
import java.util.List;

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
import restDomain.Result;

/**
 *
 * @author cathlene
 */
@Controller
@RequestMapping(value = "/movie")
public class MovieController {

    @Autowired
    private Facade facade;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getMovies() {
        return new ModelAndView("movies", "movies", facade.getMovies());
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public ModelAndView getNewForm() {
        ModelAndView modelAndView = new ModelAndView("movieForm", "movie", new Movie());
        modelAndView.addObject("actorList", facade.getActors());
        return modelAndView;
    }

    @ModelAttribute("actorList") // zodat als je fouten gegevens invoert je nog steeds de lijst acotors kan zien
    public List<Actor> actors() {
        return facade.getActors();
    }

    @RequestMapping(method = RequestMethod.POST)
    public String save(@Valid @ModelAttribute("movie") Movie movie, BindingResult result) {
        if (result.hasErrors()) {
            return "movieForm";
        } else {
            facade.addMovie(movie);
            return "redirect:/movie.htm";
        }
    }

    @RequestMapping(value = "/duration", method = RequestMethod.GET)
    public ModelAndView getMovieWithDurationLessOrEqual(@RequestParam("Duur") Integer duur) {
        return new ModelAndView("movies", "movies", facade.getMoviesWithSpecificDuration(duur));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ModelAndView getEditForm(@PathVariable("id") long id) {
        ModelAndView modelAndView = new ModelAndView("movieEditForm", "movie", facade.getMovie(id));
        modelAndView.addObject("actorList", facade.getActors());
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteMovie(@PathVariable long id) {
        facade.removeMovie(facade.getMovie(id));
        return "redirect:/movie.htm";
    }
    
     @RequestMapping(value = "/rating/{title}", method = RequestMethod.GET)
    public ModelAndView rating(@PathVariable String title) {
        Result result=facade.rating(title);
        return new ModelAndView("score", "score", result.getImdbRating());

    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateMovie(@Valid @ModelAttribute("movie") Movie movie, BindingResult result) {
        if (result.hasErrors()) {
            return "movieEditForm";
        }

        facade.updateMovie(movie);
        return "redirect:/movie.htm";
    }

}
