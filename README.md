# Mark Heydon - Profile Site

My About Me Profile pages stuff.

## Viewing Locally

### Option A: Docker/Podman (no local Hugo install required)

```bash
./scripts/invoke-hugo-site.sh serve
```

Runs a containerized Hugo dev server at `http://localhost:1313`. Also supports `build` (production-parity build to `public/`) and `preview` (build + serve the static output via nginx). Run with `--help` for all options.

### Option B: Local Hugo install

1. Ensure Hugo Extended is installed and available on your PATH, along with Go (required for Hugo Modules to resolve the theme).
2. Navigate to the project directory.
3. Start the local development server:

    ```bash
    hugo server
    ```

4. Open your browser to the URL displayed (typically `http://localhost:1313`).
5. Changes to content files will automatically rebuild and refresh in the browser.

## Theme

The site pulls in the [hugo-profile](https://github.com/gurusabarish/hugo-profile) theme as a [Hugo Module](https://gohugo.io/hugo-modules/), declared under `module.imports` in [hugo.yml](hugo.yml) and pinned via [go.mod](go.mod)/[go.sum](go.sum) — there's no `themes/` folder or git submodule. Hugo resolves and caches the module automatically at build time (Go must be available, which the containerized `hugomods/hugo` image and the devcontainer's Go feature both provide).

To bump to a newer theme commit/release:

```bash
./scripts/invoke-hugo-site.sh build --runtime docker # or podman
# then, to update the pin:
podman run --rm -v "$PWD:/src:Z" -w /src docker.io/hugomods/hugo:latest hugo mod get -u github.com/gurusabarish/hugo-profile
```

## Custom assets

`assets/scss/custom.scss` and `assets/js/custom.js` are placeholders for future custom styles/scripts processed via Hugo Pipes. They aren't referenced by any layout yet; wire one in by adding a template that calls `resources.Get` (with `resources.ToCSS`/`js.Build` and fingerprinting) and outputs the resulting `<link>`/`<script>` tag.

## License

- **Code and configuration**: [MIT License](LICENSE.md).
- **Content (text, images)**: © Mark Heydon, licensed under [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/).
- **Personal content**: You may not copy, modify, or reuse personal content without permission.
