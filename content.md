# Code Style Basics

## Introduction
Writing clean and consistent code is crucial for software development. Not only does it make your code easier to read and maintain, but it also helps you work effectively with others. In this lesson, you'll learn the basics of code style, including proper casing, indentation, and how to use the "Format Document" feature in Visual Studio Code to ensure your code is always clean and consistent, regardless of the language.

## Objectives
By the end of this lesson, you will be able to:

- Understand and apply proper casing conventions in Ruby and HTML.
- Implement correct indentation in your code.
- Use the "Format Document" feature in VSCode to automatically format your code.
- Recognize and avoid common style mistakes.

## Casing Conventions

### Ruby
Ruby uses specific conventions for naming different elements in your code:

- **Variables and Methods**: Use `snake_case`. This means all letters are lowercase, and words are separated by underscores.

```ruby
first_name = "ian"

def say_hello(name)
  "Hello, #{name}"
end
```

- **Classes and Modules**: Use `CamelCase` (also known as `PascalCase`). The first letter of each word is capitalized, with no spaces or underscores between them.

```ruby
class UserProfile
  def initialize(name, age)
    @name = name
    @age = age
  end

  def greeting
    "My name is #{name} and I'm #{age} years old"
  end
end
```

- **Constants**: Use `SCREAMING_SNAKE_CASE`. All letters are uppercase, and words are separated by underscores.

```ruby
MAX_RETRIES = 3
```

- **File and Folder Names**: Use `snake_case` for naming files and folders. This keeps your file structure consistent with Ruby conventions and makes it easier to navigate your project. Example: `user_profile.rb`, `shopping_cart.rb`.

### HTML
In HTML, consistency is also key, especially when it comes to naming files, folders, classes, and IDs:

- **Classes and IDs**: Use `kebab-case`, where words are lowercase and separated by hyphens.

```html
<div>
  <h1 id="main-title">Main Title</h1>
  <p class="main-description">A long description</p>
</div>
```

- **File and Folder Names**: Use lowercase letters and separate words with hyphens for HTML files and folders. This convention is widely accepted and makes URLs easier to read and type.
Example: `index.html`, `contact-us.html`, `css/`, `images/`.

### ERB (Embedded Ruby)
ERB files, often used in Rails and Sinatra, combine HTML and Ruby code. The following conventions help maintain readability and functionality:

- **File Naming**: ERB files should also use `snake_case`, similar to Ruby files, with a .html.erb extension.
Example: `user_profile.html.erb`, `index.html.erb`.
- **Ruby Code Inside ERB**: Follow Ruby conventions for any Ruby code inside ERB tags (`<% %>` or `<%= %>`). Ensure proper indentation and casing to keep the code readable.

- Which casing convention is used for Ruby constants?
- `snake_case`
  - Not quite. `snake_case` is used for variable and method names.
- `SCREAMING_SNAKE_CASE`
  - Correct! Ruby constants use `SCREAMING_SNAKE_CASE`.
- `CamelCase`
  - Not quite. `CamelCase` is used for class and module names.
{: .choose_best #casing_ruby_constants title="Ruby Constants Casing" points="1" answer="2" }

- What is the recommended casing for Ruby file names?
- `CamelCase`
  - Not quite. `CamelCase` is used for class and module names.
- `snake_case`
  - Correct! Ruby file names should use `snake_case`.
- `kebab-case`
  - Not quite. `kebab-case` is used for HTML class and ID names.
{: .choose_best #ruby_file_names title="Ruby File Names Casing" points="1" answer="2" }

- How should you name HTML files and folders?
- Use `CamelCase` for file names and snake_case for folder names.
  - Not quite. There’s a simpler convention that should be used for both.
- Use `snake_case` for both files and folders.
  - Not quite. HTML files and folders follow a different convention.
- Use `kebab-case` (lowercase letters and hyphens) for both file and folder names.
  - Correct! HTML files and folders should be named using lowercase letters and hyphens.
{: .choose_best #html_file_names title="HTML File and Folder Naming" points="1" answer="3" }

## Indentation
Indentation is essential for making your code readable. It visually separates blocks of code and makes the structure of your code easier to understand.

### Ruby
Ruby conventionally uses 2 spaces per indentation level. Avoid using tabs or mixing spaces and tabs.

```ruby
def greet_user(name)
  if name
    puts "Hello, #{name}!"
  else
    puts "Hello, guest!"
  end
end
```

Notice how each nested block is indented 2 spaces further than the block it belongs to.

### HTML
HTML typically uses 2 or 4 spaces for indentation. Choose one and stick to it consistently throughout your project.

```html
<div class="container">
  <h1>Welcome</h1>
  <p>This is a sample text.</p>
</div>
```

### ERB
For ERB files, indentation should reflect both the HTML structure and the Ruby code embedded within it.

```erb
<div class="container">
  <% if user_signed_in? %>
    <h1>Welcome, <%= current_user.name %>!</h1>
  <% else %>
    <h1>Welcome, Guest!</h1>
  <% end %>
  <p>This is a sample text.</p>
</div>
```

- How many spaces should you use for each indentation level in Ruby?
- 1 space
  - Not quite. Ruby uses more spaces per indentation level.
- 2 spaces
  - Correct! Ruby uses 2 spaces per indentation level.
- 4 spaces
  - Not quite. While 4 spaces can be used in other languages, Ruby standard is 2 spaces.
{: .choose_best #ruby_indentation title="Ruby Indentation" points="1" answer="2" }

## Using Format Document in VSCode
VSCode's "Format Document" feature is a powerful tool that automatically formats your code according to the style guidelines of the language you're working with. This feature can be used for various languages, including Ruby, HTML, JavaScript, and more.

<!-- TODO: add screenshots -->

### Step-by-Step: Using Format Document
Set Up Formatting for Your Language

Ensure that you have the appropriate formatter installed for the language you're working with. For example:

- For Ruby, you can use Rufo or Prettier.
- For HTML and ERB, Prettier is a common choice.

#### Configure VSCode Settings

To ensure that your documents are formatted automatically on save, add the following settings to your settings.json file in VSCode:

```json
{
  "editor.formatOnSave": true,
  "[ruby]": {
    "editor.defaultFormatter": "rufo" // or "ruby-rubocop"
  },
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[erb]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  }
}
```

#### Use Format Document

To format your code manually:

1. Open the file you want to format in VSCode.
2. Right-click anywhere in the editor and select Format Document from the context menu. You can use the keyboard shortcut Shift + Alt + F (Windows) or Shift + Option + F (Mac) to format the document. Alternatively you can search "Format Document" from the command pallet CTRL + Shift + P (Windows) or Command + Shift + P (Mac).
3. VSCode will automatically format the document based on the settings you've configured.

#### Verify the Formatting

After formatting, review your code to ensure it meets the expected style guidelines.

- Which VSCode command is used to format the entire document?
- Ctrl + S
  - Not quite. This command saves the file, but does not format it.
- Shift + Alt + F (Windows) / Shift + Option + F (Mac)
  - Correct! This command formats the entire document.
- Ctrl + F
  - Not quite. This command is used for finding text in the document.
{: .choose_best #format_document title="Formatting Document" points="1" answer="2" }

## Best Practices

### Consistency is Key
Consistency in your coding style makes your code easier to read and maintain. Whether you're working on a team or on a solo project, follow these best practices:

- **Stick to the style guide**: Whether it’s Ruby, HTML, or ERB, following a consistent style guide is crucial.
- **Use tools to automate**: Use linters and formatters like "Format Document" in VSCode to automatically enforce your style guide.
- **Review and Refactor**: Regularly review your code and refactor it to meet the style guidelines.

<!--  -->

- Why is consistency in coding style important?
- It makes the code prettier.
  - Not quite. While prettier code is a side benefit, there's a more important reason.
- It helps in debugging.
  - Partially correct. Consistent code can make debugging easier, but there’s a broader reason.
- It makes the code easier to read and maintain.
  - Correct! Consistency helps in readability and maintainability of the code.
{: .choose_best #consistency_importance title="Importance of Consistency" points="1" answer="3" }

<!--  -->

## Conclusion
This lesson provides the foundation for writing clean and consistent code in Ruby, HTML, ERB, and other languages. By adhering to these guidelines and utilizing tools like VSCode’s "Format Document" feature, you'll improve your coding skills and ensure that your code is easy to read, maintain, and share with others.

Approximately how long (in minutes) did this lesson take you to complete?
{: .free_text_number #time_taken title="Time taken" points="1" answer="any" }
