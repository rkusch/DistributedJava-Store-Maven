/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.dj.week4.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author ryan
 */
public class NameService {

    private List<Name> nameList = Arrays.asList(
            new Name("1", "Fred", "Jones",
                        new Address("123 Main,", "Milwaukee", "WI", "12345")),
            new Name("2", "Joe", "Smith", new Address("456 Main,", "Milwaukee", "WI", "54321"))
    );

    public Name getName(String id) {
        Name theName = null;
        for (Name name : nameList) {
            if (name.getId().equals(id)) {
                theName = name;
            }
        }
        return theName;
    }

    public List<Name> getAllNames() {
        return nameList;
    }

    public List<Name> findNames(String search) {
        search = search.toLowerCase();
        List<Name> theList = new ArrayList<Name>();
        for (Name name : nameList) {
            if (name.getFirst().toLowerCase().startsWith(search) || name.getLast().toLowerCase().startsWith(search)) {
                theList.add(name);
            }
        }
        return theList;
    }

}
