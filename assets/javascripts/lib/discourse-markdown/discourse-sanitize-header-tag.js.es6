export function setup(helper) {
  helper.registerOptions((opts, siteSettings) => {
    opts.features["discourse-sanitize-header-tag"] = true;
  });

  helper.registerPlugin(md => {
    ["heading", "lheading"].forEach((i) => {
      md.block.ruler.at(i, () => {
        //noop
      });
    });
  });
}
