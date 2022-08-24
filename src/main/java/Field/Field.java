package Field;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Field {
    private final Map<Integer, String> fieldMap; //???FINAL??
    private final List<Integer> knightDeltaAll = new ArrayList<>(List.of(12, 21, 19, 8, -12, -21, -19, -8));

    public Field(){
        this.fieldMap = new HashMap<>();
        for (int i = 0; i < 100; i++) {
            fieldMap.put(i, "");
        }
    }

    public Map<Integer, String> getFieldMap() {
        return fieldMap;
    }

    public void addToMap(int key, int value){
        if (fieldMap.get(key).equals("")) {
            fieldMap.put(key, String.valueOf(value));
        }
    }

    public boolean allowedToMove(int currentCell, int cellToMove){
        int delta = currentCell-cellToMove;
        boolean knightMovement = false;
        boolean sellIsEmpty = fieldMap.get(cellToMove).equals("");
        if (knightDeltaAll.contains(delta)){
            knightMovement = true;}
        return knightMovement && sellIsEmpty;
    }

    public List<Integer> listOfAvailableCells(int currentCell){
        List<Integer> availableCells = new ArrayList<>();
        List<Integer> currentMoveDelta = new ArrayList<>();
        System.out.println("CELLSS!!!!!!!!");
        System.out.println(availableCells);

        switch (currentCell){
            case 0 -> currentMoveDelta.addAll(List.of(-12, -21));
            case 9 -> currentMoveDelta.addAll(List.of(-8, -19));
            case 90 -> currentMoveDelta.addAll(List.of(8, 19));
            case 99 -> currentMoveDelta.addAll(List.of(12, 21));
            case 1 -> currentMoveDelta.addAll(List.of(-12, -21, -19));
            case 8 -> currentMoveDelta.addAll(List.of(-8, -19, -21));
            case 19 -> currentMoveDelta.addAll(List.of(12, -8, -19));
            case 89 -> currentMoveDelta.addAll(List.of(-8, -12, 21));
            case 98 -> currentMoveDelta.addAll(List.of(19, 12, 21));
            case 91 -> currentMoveDelta.addAll(List.of(8, 19, 21));
            case 80 -> currentMoveDelta.addAll(List.of(8, 19, -12));
            case 10 -> currentMoveDelta.addAll(List.of(8, -21, -12));
            case 2,3,4,5,6,7 -> currentMoveDelta.addAll(List.of(-8, -19, -21, -12));
            case 29,39,49,59,69,79 -> currentMoveDelta.addAll(List.of(21, 12, -8, -19));
            case 92,93,94,95,96,97 -> currentMoveDelta.addAll(List.of(12,21,19,8));
            case 20,30,40,50,60,70 -> currentMoveDelta.addAll(List.of(19,8,-12,-21));
            case 11 -> currentMoveDelta.addAll(List.of(8,-12,-21,-19));
            case 18 -> currentMoveDelta.addAll(List.of(12,-8,-19,-21));
            case 88 -> currentMoveDelta.addAll(List.of(19,21,12,-8));
            case 81 -> currentMoveDelta.addAll(List.of(21,19,8,-12));
            case 12,13,14,15,16,17 -> currentMoveDelta.addAll(List.of(12,-8,-19,-21,-12,8));
            case 28,38,48,58,68,78 -> currentMoveDelta.addAll(List.of(19,21,12,-8,-19,-21));
            case 82,83,84,85,86,87 -> currentMoveDelta.addAll(List.of(-8,12,21,19,8,-12));
            case 21,31,41,51,61,71 -> currentMoveDelta.addAll(List.of(21,19,8,-12,-21,-19));
            default -> currentMoveDelta.addAll(List.of(12,21,19,8,-12,-21,-19,-8));
        }
        for (int delta: currentMoveDelta) {
            int cell = currentCell - delta;
            if (cell>=0 && cell <100 && fieldMap.get(cell).equals("")){
                availableCells.add(cell);
            }
        }
        return availableCells;
    }

}
