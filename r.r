Stack <- setRefClass(
  "Stack",
  fields = list(items = "list"),
  methods = list(
    push = function(item) {
      items <<- append(items, item)
    },
    pop = function() {
      if (length(items) == 0) stop("Stack is empty")
      item <- items[[length(items)]]
      items <<- items[-length(items)]
      return(item)
    },
    peek = function() {
      if (length(items) == 0) stop("Stack is empty")
      return(items[[length(items)]])
    },
    is_empty = function() {
      return(length(items) == 0)
    }
  )
)

stack <- Stack$new(items = list())
stack$push(1)
stack$push(2)
print(stack$pop())  # 2