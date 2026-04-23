<?php

class PizzaPi
{
    public function calculateDoughRequirement($pizzas, $persons)
    {
        return $pizzas * (($persons * 20) + 200);
    }

    public function calculateSauceRequirement($pizzas, $can_size)
    {
        return $pizzas * 125 / $can_size;
    }

    public function calculateCheeseCubeCoverage($side, $thickness, $diam)
    {
        return floor($side**3 / ($thickness * 3.14 * $diam));
    }

    public function calculateLeftOverSlices($pizzas, $friends)
    {
        return $pizzas*8 % $friends;
    }
}
