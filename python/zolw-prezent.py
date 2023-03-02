import turtle

zółw = turtle.Turtle()
zółw.shape('turtle')

zółw.color('red')
zółw.right(90)
zółw.forward(200)
zółw.right(90)
zółw.forward(200)
zółw.right(90)
zółw.forward(200)
zółw.right(90)
zółw.forward(200)
zółw.left(180)
zółw.forward(100)

zółw.color('yellow')
zółw.begin_fill
zółw.right(90)
zółw.circle(30)
zółw.end_fill()
zółw.right(180)
zółw.color('green')
zółw.circle(30)
zółw.right(180)


turtle.exitonclick()