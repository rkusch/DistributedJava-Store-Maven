/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.dj.week4.model;

/**
 *
 * @author ryan
 */
public class StaticPage {
    private String id;
    private String content;

    public StaticPage(String id, String content) {
        this.id = id;
        this.content = content;
    }
    
    public StaticPage(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    
    
}
