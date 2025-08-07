# Commit Message Guidelines

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.

## Format

```
<type>(optional-scope): <short summary>

[optional body]

[optional footer(s)]
```

### Examples

```
feat(auth): add JWT authentication
fix(login): handle incorrect password error
docs(readme): update installation steps
refactor(api): simplify user endpoint
```

## Types

- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Code style (formatting, missing semi-colons, etc.)
- **refactor**: Code change that neither fixes a bug nor adds a feature
- **perf**: Performance improvements
- **test**: Adding or fixing tests
- **chore**: Tooling changes, CI/CD, dependency updates

## Commit Rules

- Use **present tense**: “add feature” not “added” or “adds”
- **Limit line length** to 72 characters
- Include **scope** if relevant (`feat(ui):` or `fix(auth):`)
- Don't end the summary line with a period (`.`)
- Separate body from summary with a blank line

## Invalid Examples

```
Updated stuff
Bug fixes
login fixed
```