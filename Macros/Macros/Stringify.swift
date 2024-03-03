@freestanding(expression)
public macro stringify<T>(_ value: T) -> (T, String) =
  #externalMacro(module: "MacrosPlugin", type: "StringifyMacro")