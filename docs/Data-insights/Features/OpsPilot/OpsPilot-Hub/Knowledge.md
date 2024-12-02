## Knowledge

The Knowledge section in OpsPilot allows you to add general information that helps the system understand your entire technology stack and organization. This feature enhances OpsPilot's ability to provide relevant and contextualized responses.

![!Screenshot](/frdocs/Data-insights/Features/OpsPilot/images/knowledge.png)

When adding content to OpsPilot Knowledge, it's crucial to understand that the system relies heavily on titles and descriptions to locate relevant information when answering questions. To maximize the effectiveness of your knowledge base, ensure that your titles and descriptions are comprehensive and accurately reflect all the topics covered in each snippet or document. 

!!! tip
    Always review auto-generated titles and descriptions. If they're incomplete or inaccurate, edit them manually. Precise, detailed titles and descriptions greatly improve OpsPilot's ability to find and use the right information, leading to better, more relevant responses.

Currently, two types of knowledge can be added to OpsPilot:

1. [Snippets](/frdocs/Data-insights/Features/OpsPilot/OpsPilot-Hub/Knowledge/#snippets)

2. [Files](/frdocs/Data-insights/Features/OpsPilot/OpsPilot-Hub/Knowledge/#files)

### Snippets
- Text-based information with a 5,000 character limit.
- Title field is optional (auto-generated based on content if not provided).

!!! tip
    We advise splitting detailed information into multiple snippets.

!!! Example
    Instructions for configuring logging, README files, Customer support questions, QA, company names and roles.


#### Adding a snippet

1. Open the OpsPilot Hub interface.
1. Click the **Add Knowledge** button on the right of your screen and select **Snippet**. The Add snippet interface is displayed.
2. Enter a title for your snippet. (optional)
3. Add the content of your snippet in the **Content** text area. This is where you'll add the short-form text for your knowledge base.
4. Add relevant tags to categorize your snippet.
5. Once you've filled in the necessary information, click the **Add Snippet** button in the bottom right corner to save your snippet to the knowledge base.
6. If you need to cancel the process, click the **Close** button.



### Files

- No limit on information quantity.
- Zips have no file limit size, but the files inside them cannot be bigger than 10mb.
- Supports various file types: .txt, .eml, .msg, .xml, .html, .md, .rst, .json, .rtf, .doc, .docx, .ppt, .pptx, .pdf, .odt, .epub, .csv, .tsv, .xlsx, .zip

#### Adding a file

1. Open the OpsPilot Hub interface.
2. Click the **Add Knowledge** button on the right of your screen and select **File**. The **Add file** dialog box is displayed.
5. In the **Files** section, either:<br>
   a. Drag and drop files into the box with the open box icon, or<br>
   b. Click anywhere in the box to open a file selection window.
7. In the **Tags** section, add new tags or select relevant tags to categorize your file. 
10. Click the **Upload Files** button in the bottom right corner to add the file(s) to your knowledge base.
11. If you need to cancel the process, select the **Close** button.

### Tags

- Help organize and structure information logically.
- Act as labels to categorize knowledge and improve searchability.
- Provide additional context without altering content.
- Can be assigned to specific services where applicable.

## Knowledge organization & retrieval

### Filtering

Filter knowledge sources by:

- Search terms

- Types (files/snippets)

- Tags


## Future developments
1. Detection of duplicate or conflicting information.
2. Automated knowledge extraction from websites and other sources.
3. Source citation capabilities.
4. Integrations with Slack and Microsoft Teams.
5. AI-powered recommendations for adding snippets.

