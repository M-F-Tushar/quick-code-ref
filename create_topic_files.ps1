$topics = @(
    @{name="collections"; files=@("c-collections.md", "cpp-collections.md", "java-collections.md", "python-collections.md", "js-collections.md")},
    @{name="oop"; files=@("c-oop.md", "cpp-oop.md", "java-oop.md", "python-oop.md", "js-oop.md")},
    @{name="file-io"; files=@("c-file-io.md", "cpp-file-io.md", "java-file-io.md", "python-file-io.md", "js-file-io.md")},
    @{name="error-handling"; files=@("c-error-handling.md", "cpp-error-handling.md", "java-error-handling.md", "python-error-handling.md", "js-error-handling.md")},
    @{name="pointers-memory"; files=@("c-pointers-memory.md", "cpp-pointers-memory.md", "java-pointers-memory.md", "python-pointers-memory.md", "js-pointers-memory.md")},
    @{name="functional"; files=@("c-functional.md", "cpp-functional.md", "java-functional.md", "python-functional.md", "js-functional.md")},
    @{name="regex"; files=@("c-regex.md", "cpp-regex.md", "java-regex.md", "python-regex.md", "js-regex.md")}
)

foreach ($topic in $topics) {
    $topicName = $topic.name
    foreach ($file in $topic.files) {
        $lang = $file.Split("-")[0].ToUpper()
        if ($lang -eq "CPP") { $lang = "C++" }
        elseif ($lang -eq "JS") { $lang = "JavaScript" }
        
        $langPath = $file.Split("-")[0]
        if ($langPath -eq "cpp") { $langPath = "CPP" }
        elseif ($langPath -eq "js") { $langPath = "JavaScript" }
        else { $langPath = $langPath.ToUpper() }
        
        $topicTitle = ($topicName -replace "-", " ").ToUpper()
        
        $content = @"
# $topicTitle in $lang

[Back to Main](/README.md)

---

*This is the topic-based view. For the language-based view, see [$lang $topicTitle](/$langPath/$($topicName).md)*

For complete content, please refer to [$lang $topicTitle](/$langPath/$($topicName).md) in the language-based view.

---

[Back to Main](/README.md)
"@
        
        $filePath = "e:\Clone\quick-code-ref\topics\$topicName\$file"
        Set-Content -Path $filePath -Value $content
        Write-Host "Created $filePath"
    }
}
