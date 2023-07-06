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

    /**
     * This method converts an arrayList to a linked list and returns the linked
     * list
     *
     * @param list list that brings from LoansHistory
     * @return linked list
     */
    public static LinkedList<Node> convertArray(ArrayList<LogBookLoans> list) {
        LinkedList<Node> loanList = new LinkedList<>();

        for (LogBookLoans elemento : list) {
            Node nuevoNodo = new Node(elemento);
            loanList.add(nuevoNodo);
        }

        return loanList;
    }

    /**
     * it passes the linked list and sends it to the quicksort algorithms
     *
     * @param loanList linked list
     */
    public static void sortLinkedList(LinkedList<Node> loanList) {
        List<Node> lista = new ArrayList<>(loanList);
        quicksort(lista, 0, lista.size() - 1);

        // Reconstruir la lista enlazada ordenada
        loanList.clear();
        for (Node node : lista) {
            loanList.add(node);
        }
    }

    /**
     * Sorts a list of nodes using the QuickSort algorithm.
     *
     * @param lista list the list of nodes to sort
     * @param low the lowest index of the sublist to sort
     * @param high the highest index of the sublist to sort
     */
    private static void quicksort(List<Node> lista, int low, int high) {
        if (low < high) {
            int pi = partition(lista, low, high);
            quicksort(lista, low, pi - 1);
            quicksort(lista, pi + 1, high);
        }
    }

    /**
     * Split the list into two sublists, moving the smaller elements to the left
     * and the largest elements to the right, using a pivot determined by the
     * full data name of a node.
     *
     * @param lista list the list of nodes from
     * @param low the lowest index of the sublist from
     * @param high the highest index of the sublist to partition
     * @return partition index
     */
    private static int partition(List<Node> lista, int low, int high) {
        String pivot = lista.get(high).dato.getFullName();
        int i = low - 1;

        for (int j = low; j < high; j++) {
            if (lista.get(j).dato.getFullName().compareToIgnoreCase(pivot) <= 0) {
                i++;
                swap(lista, i, j);
            }
        }
        swap(lista, i + 1, high);
        return i + 1;
    }

    /**
     * Swaps two elements in a given list.
     *
     * @param list the list on which the exchange is made
     * @param i the index of the first element to swap
     * @param j the index of the second element to swap
     */
    private static void swap(List<Node> list, int i, int j) {
        Node temp = list.get(i);
        list.set(i, list.get(j));
        list.set(j, temp);
    }

}
