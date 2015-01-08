Hamlet = require "../main"

describe "Hamlet", ->
  it "should be able to compile a template", ->
    template = Hamlet.Compiler.compile """
      %test
        %button Heyy
    """,
      compiler: CoffeeScript
      runtime: "Hamlet"

    console.log template

    data = {}
    console.log Function("Hamlet", "return " + template)(Hamlet)(data)
