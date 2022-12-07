import turtle

window = turtle.Screen()
window.bgcolor("sky blue")

turtle.done()

tree = turtle.Turtle()
tree.color("forest green")

tree.setposition(50, -50)
tree.setposition(-50, -50)
tree.setposition(0, 0)

tree.begin_fill()
tree.setposition(50, -50)
tree.setposition(-50, -50)
tree.setposition(0, 0)
tree.end_fill()

def make_tree_segment():
    tree.begin_fill()
    tree.setposition(50, -50)
    tree.setposition(-50, -50)
    tree.setposition(0, 0)
    tree.end_fill()
    
make_tree_segment()

def make_tree_segment(size):
    tree.begin_fill()
    tree.setposition(size, -size)
    tree.setposition(-size, -size)
    tree.setposition(0, 0)
    tree.end_fill()

make_tree_segment(50)

def make_tree_segment(size, top_position):
    tree.begin_fill()
    tree.setposition(0, top_position)
    tree.setposition(size, top_position - size)
    tree.setposition(-size, top_position - size)
    tree.setposition(0, top_position)
    tree.end_fill()

make_tree_segment(150, 100)

make_tree_segment(50, 20)
make_tree_segment(80, 0)
make_tree_segment(120, -30)
make_tree_segment(150, -60)

tree_segments = ((50, 20), (80, 0), (120, -30), (150, -60))

for size, top_position in tree_segments:
    make_tree_segment(size, top)