/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import java.util.ArrayList;
import java.util.LinkedList;
import clasess.Node;
import clases.LogBookLoans;
import java.util.List;

/**
 * This class creates a linked list and sorts it with the quickSort algorithm.
 *
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Diego Herrera Lopez
 * @author Jonathan Alfaro Herrera
 */
public class ListLogBookLoans {

    public Node head;

    /**
     * the first node is initialized as null
     */
    public ListLogBookLoans() {
        this.head = null;
    }

    /**
     * Converts an ArrayList of LogBookLoans to a linked list of LogBookLoans
     * and returns a new ArrayList.
     *
     * @param listings listings the ArrayList of LogBookLoans to convert.
     * @return a new ArrayList representing the linked list of LogBookLoans.
     */
    public static ArrayList<LogBookLoans> convertList(ArrayList<LogBookLoans> listings) {
        ListLogBookLoans list = new ListLogBookLoans();
        for (LogBookLoans data : listings) {
            list.addElement(data);
        }
        return list.convertArrayList();
    }

    /**
     * Add a LogBookLoans element to the end of the linked list.
     *
     * @param loan loan el objeto LogBookLoans a agregar.
     *
     */
    public void addElement(LogBookLoans loan) {
        Node newNode = new Node(loan);
        if (head == null) {
            head = newNode;
        } else {
            Node currentNode = head;
            while (currentNode.sig != null) {
                currentNode = currentNode.sig;
            }
            currentNode.sig = newNode;
        }
    }

    /**
     * This method converts an arrayList to a linked list and returns the linked
     * list
     *
     * @return an arrayList
     */
    public ArrayList<LogBookLoans> convertArrayList() {
        ArrayList<LogBookLoans> arrayList = new ArrayList<>();
        Node currentNode = head;
        while (currentNode != null) {
            arrayList.add(currentNode.dato);
            currentNode = currentNode.sig;
        }
        return arrayList;
    }

    /**
     * Sorts a linked list of LogBookLoans objects using the QuickSort
     * algorithm. Items are sorted in place and the linked list is rebuilt with
     * the sorted items.
     *
     * @param loanList loanList the linked list of LogBookLoans objects to sort.
     */
    public static void sortLinkedList(ArrayList<LogBookLoans> loanList) {
        List<LogBookLoans> lista = new ArrayList<>(loanList);
        quicksort(lista, 0, lista.size() - 1);

        // Rebuild ordered linked list
        loanList.clear();
        for (LogBookLoans node : lista) {
            loanList.add(node);
        }
    }

    /**
     * Sorts a list of LogBookLoans objects using the QuickSort algorithm.
     *
     * @param lista Sorts a list of LogBookLoans objects using the QuickSort
     * algorithm.
     * @param low the lowest index of the sublist to sort.
     * @param high the highest index of the sublist to sort.
     */
    private static void quicksort(List<LogBookLoans> lista, int low, int high) {
        if (low < high) {
            int pi = partition(lista, low, high);
            quicksort(lista, low, pi - 1);
            quicksort(lista, pi + 1, high);
        }
    }

    /**
     * Split the list elements in 2 and the smaller one goes to the left and the
     * bigger elements to the right
     *
     * @param lista list to split in 2
     * @param low smallest list index
     * @param high the highest index of the list
     * @return the highest index of the list
     */
    private static int partition(List<LogBookLoans> lista, int low, int high) {
        String pivot = lista.get(high).getFullName();
        int i = low - 1;

        for (int j = low; j < high; j++) {
            if (lista.get(j).getFullName().compareToIgnoreCase(pivot) <= 0) {
                i++;
                swap(lista, i, j);
            }
        }
        swap(lista, i + 1, high);
        return i + 1;
    }

    /**
     * swap 2 elements within the list so that they are sorted alphabetically by
     * name
     *
     * @param list swap 2 list items
     * @param i the index of the first element to change
     * @param j the index of the second element to change
     */
    private static void swap(List<LogBookLoans> list, int i, int j) {
        LogBookLoans temp = list.get(i);
        list.set(i, list.get(j));
        list.set(j, temp);
    }

}
