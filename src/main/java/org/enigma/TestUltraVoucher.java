package org.enigma;

/*
Created By IntelliJ IDEA 2022.1.3 (Community Edition)
Build #IC-221.5921.22, built on June 21, 2022
@Author JEJE a.k.a Jefri S
Java Developer
Created On 10/18/2023 17:11
@Last Modified 10/18/2023 17:11
Version 1.0
*/

import java.util.*;

public class TestUltraVoucher {

        public static void main(String[] args) {

            String[] arr = {"cook", "save", "taste", "aves", "vase", "state", "map"};

            List<List<String>> anagramGroups = groupAnagrams(arr);

            for (List<String> group : anagramGroups) {
                System.out.println(group);
            }
        }

        public static List<List<String>> groupAnagrams(String[] arr){
            Map<String, List<String>> anagramGroups = new HashMap<>();
            for (String pecah : arr) {
                char[] pecah2 = pecah.toCharArray();
                Arrays.sort(pecah2);
                String simpan = new String(pecah2);
                if (!anagramGroups.containsKey(simpan)) {
                    anagramGroups.put(simpan, new ArrayList<>());
                }

                anagramGroups.get(simpan).add(pecah);
            }
            return new ArrayList<>(anagramGroups.values());
        }

}

