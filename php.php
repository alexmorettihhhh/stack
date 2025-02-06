<?php
class Stack {
    private $items = [];

    public function push($item) {
        array_push($this->items, $item);
    }

    public function pop() {
        return array_pop($this->items);
    }

    public function peek() {
        return end($this->items);
    }

    public function isEmpty() {
        return empty($this->items);
    }
}

$stack = new Stack();
$stack->push(1);
$stack->push(2);
echo $stack->pop();  // 2
?>