; Comments
(comment) @comment

; Keywords
[
  "if"
  "else"
] @keyword

(import_statement "import" @keyword)
(foreach_statement "foreach" @keyword)

; Built-in functions and target types
(call_expression
  function: (identifier) @function
  (#match? @function "^(action|action_foreach|bundle_data|copy|create_bundle|executable|group|loadable_module|shared_library|source_set|static_library|target|template|config|declare_args|defined|exec_script|forward_variables_from|get_label_info|get_path_info|get_target_outputs|getenv|import|print|process_file_template|read_file|rebase_path|set_default_toolchain|set_defaults|split_list|string_join|string_replace|tool|toolchain|toolchain_args|write_file)$"))

; Identifiers and variables
(identifier) @variable

; Literals
(string) @string
(integer) @number
(boolean) @constant.builtin

; Operators and Punctuation
[
  "{"
  "}"
  "["
  "]"
  "("
  ")"
] @punctuation.bracket

[
  "="
  "+="
  "-="
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "&&"
  "||"
  "!"
] @operator
