from behave import step


@step('Define variables x and y')
def step_impl(context):
    context.x = 0
    context.y = 0


@step('Add 1 to x')
def step_impl(context):
    context.x += 1


@step('Add 1 to y')
def step_impl(context):
    context.y += 1


@step('x is equal to y')
def step_impl(context):
    assert context.y == context.x, "Numbers are not equal"
