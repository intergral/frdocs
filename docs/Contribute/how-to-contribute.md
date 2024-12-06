# Guidelines

The Documentation Team at FusionReactor welcome contributions to this repository. This doc walks you through the different methods for making or requesting changes to the docs site. 


## Prerequisites

* A GitHub account

## Contribute to the FR docs

Contributing to our documentation is simpler than you might think. While you don't need to be an expert in git or GitHub, here are some key terms you'll encounter along the way:

* Commit: Acts like a save

* Branch: houses your commit(s).

* Pull request: Packages your branch and sends it to us to review and publish.

### Edit via the browser

**Step 1: Find and Open the Page**

- Navigate to the documentation page you want to edit.
- Click **frdocs** to the right of the search bar to view the page's source.


**Step 2: Make Your Changes**

- Click the pencil icon to enter edit mode.
- Make your desired changes to the content.
- Don't worry about perfect formatting or grammar — our team will help with that.

**Step 3: Save Your Work**

- Click the **Commit changes** button when finished.
- Write a brief message describing your changes.
- **Important**: Select **Create a new branch** for this commit.

**Step 4: Submit for Review**

- Monitor your pull request in the **Conversation** tab.
- Click **Ready for review** when your changes are complete.
- Use the **Files changed** tab if you need to make additional edits.

**Step 5: Track Progress**

- Our tech writers will review within 5 working days.
- Monitor the **Projects** section in the right nav for status updates.
- Watch for any feedback or questions from the review team.

**Step 6: See Your Changes Live**

- Look for the purple **Merged** button when approved.
- Your changes will appear after the next scheduled release.
- Check the live docs to see your contribution in action.


### Edit the site locally


**Step 1: Fork the Repository**

- Click the **Fork** button on the docs-website repo.
- Choose your account as the owner.
- Keep the default repo name or customize it.
- Add an optional description.

**Step 2: Clone to Your Machine**

- Go to your forked repo on your GitHub profile.
- Click the **Code** button and copy the HTTPS URL.
- Open your terminal and navigate to your desired folder using `cd <YOUR_PATH_TO_FOLDER>`
- Run: `git clone <YOUR_PASTE_OF_HTTPS_URL>`

**Step 3: Connect to Original Repo**

- Go to the original docs-website repo.
- Copy the HTTPS URL from the **Code** button.
- Navigate to your cloned folder in the terminal.
- Run: `git remote add upstream <HTTPS_URL_HERE>`
- Verify with `git remote -v` to see both origin and upstream connections.

**Step 4: Set Up GitHub Desktop**

- Open GitHub Desktop.
- Go to **File** > **Add local repository**
- Select your cloned docs site folder.
- Create a new branch for your changes.
- Open the folder in VS Code or your preferred editor.

**Step 5: Make Your Test PR**

- Make a small edit to any doc.
- In GitHub Desktop, add a commit message (e.g., "Test pull request, do not merge").
- Click **Commit**.
- Follow prompts to publish your branch.
- Create the pull request, ensuring the base is set to **develop**.

**Step 6: Maintain Your Fork**

- Regularly use **Fetch origin** in GitHub Desktop.
- This keeps your fork synchronized with the main repo.
- Make new branches for future contributions.

!!! Note
    You can now also collaborate on existing branches from other contributors. The Docs Team will help troubleshoot any build errors and ensure your contributions are properly formatted and integrated.

## Create a new doc

**Step 1: Set Up Your Environment**

- Clone the repository to your local machine..
- Navigate to the `/docs/` directory
- Choose an appropriate location for your new document.

**Step 2: Create Your Document**

- Create a new `.md` file in your chosen location.
- Alternatively, copy an existing doc as a template.
- Open the file in your preferred text editor.

**Step 3: Add Your Content**

- Write your documentation content.
- Don't worry about perfect formatting.
- Focus on getting your ideas down clearly.

**Step 4: Navigation (Optional)**

- Locate the right nav `.yml` file.
- Add your doc to the navigation structure.

**Step 5: Submit Your Work**

- Commit your changes to your branch.
- Create a pull request for review.
- Our team will help finalize and position your content.







