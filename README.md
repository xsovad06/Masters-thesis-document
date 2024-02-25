# Masters-thesis-document
ConTeXt project for masters thesis

## Project Structure

- `assignment` - folder with the assignment documents
- `chapters` - folder with the individual chapters of the thesis
- `figures` - folder with the images
- `references` - folder with the references include file
- `bib.sty-v2.78.tex` - bibliography style file
- `ctx-thesis-v0.991.tex` - thesis theme file
- `Makefile` - helper function for manipulation with the project
- `masters-thesis-damian-sova.tex` - main file which initiates the final document

## Usage
For compilation call use the `make` command in the root of the project.
For the cleaning of the generated files use the `make clean` command.
For the addition of the `~` character to the source text of the thesis `make vlna` command to avoid the wrong text wrapping.
