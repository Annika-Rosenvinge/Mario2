import java.util.ArrayList;

/* klassen skal laves om så den passer med sql
public Pizza (...) skal laves om så den henter pizzaerne
*/

public class Pizza {
    private int pizzaNumber;
    private String pizzaName;
    private int price;
    private String ingredients;

    public Pizza(int pizzaNumber, String pizzaName, int price, String ingredients) {
        this.pizzaNumber = pizzaNumber;
        this.pizzaName = pizzaName;
        this.price = price;
        this.ingredients = ingredients;
    }

    ArrayList<Pizza> menu = new ArrayList<>();


    public int getPrice() {
        return price;
    }

    public int getPizzaNumber() {
        return pizzaNumber;
    }

    public static void addPizzaToMenu(ArrayList<Pizza> menu, Pizza pizza) {
        menu.add(pizza);
    }

    @Override
    public String toString() {
        return  pizzaNumber + ". " + pizzaName + " " + ingredients + getPrice() + ",-";
    }
}
